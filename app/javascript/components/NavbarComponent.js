
import React, { useState, useEffect } from 'react';

const NavbarComponent = ({ userSignedIn, currentUser, unreadNotificationsCount: initialUnreadCount }) => {
    
    const [notifications, setNotifications] = useState([]);
    const [unreadNotificationsCount, setUnreadNotificationsCount] = useState(initialUnreadCount);
    const csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
    useEffect(()=>{
        fetchNotifications();
    },[]);
    // This function will fetch and display notifications (to be implemented)
    const fetchNotifications = () => {
        fetch('/notifications', {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-Token': csrfToken
            }
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            setNotifications(data); // Update the state with the fetched notifications
            setUnreadNotificationsCount(data.length); // Update the unread count
        })
        .catch(error => {
            console.error("There was a problem fetching notifications:", error.message);
        });
    };

    



    // This function will mark a notification as read (to be implemented)
    const markNotificationAsRead = (notificationId) => (event)=>{
        event.preventDefault();
    
        fetch(`/notifications/${notificationId}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
                // Include any other headers, e.g., authentication tokens if required
                'X-CSRF-Token': csrfToken  // If you're using Rails' CSRF protection
            },
            body: JSON.stringify({ status: "read" })
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            if (data.success) {
                setNotifications(prevNotifications => {
                    return prevNotifications.filter(notif => notif.id !== notificationId);
                });
                setUnreadNotificationsCount(prevCount => prevCount - 1);
            } else {
                console.error("Error marking notification as read:", data.errors);
            }
        })
        
        .catch(error => {
            console.error("There was a problem with the fetch operation:", error.message);
        });
    };
    

    return (
        <div>
            <nav className="navbar navbar-expand-lg navbar-light bg-DARK">
                <div className="container">
                    <a className="navbar-brand" href="#">Campaign Unifier</a>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <ul className="navbar-nav ml-auto">
                        <li className="nav-item">
                            <a className="nav-link" href="/campaigns">Home</a>
                        </li>
                        {userSignedIn && (
                            <>
                                <li className="nav-item">
                                    <a className="nav-link" href="/my_campaigns">My Campaigns</a>
                                </li>
                                <li className="nav-item">
                                    <a className="nav-link" href="/campaigns/new">Add New Campaign</a>
                                </li>
                            </>
                        )}
                        <li className="nav-item">
                            <a className="nav-link" href="#">Contact Admin</a>
                        </li>
                    </ul>
                    <div className="notification-area">
                        <div className="dropdown">
                            <a className="nav-link dropdown-toggle" href="#" id="notification-dropdown" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false" onClick={fetchNotifications}>
                                Notifications
                                {unreadNotificationsCount > 0 && (
                                    <span className="badge badge-danger" id="unread-notifications-count">
                                        {unreadNotificationsCount}
                                    </span>
                                )}
                            </a>
                            <div className="dropdown-menu" aria-labelledby="notification-dropdown">
                                {notifications.length === 0 ? (
                                    <p>No new notifications</p>
                                ) : (
                                    notifications.map(notification => (
                                        <a key={notification.id} href={`/campaigns/${notification.campaign_id}`} 
                                            className="dropdown-item" onClick={() => markNotificationAsRead(notification.id)}>
                                            {`Campaign ${notification.campaign_id}`}
                                        </a>
                                    ))
                                )}
                            </div>
                        </div>
                    </div>
                    <div className="ml-auto">
                        {userSignedIn ? (
                            <>
                                <p className="navbar-text">
                                    Welcome, {currentUser.firstName}
                                </p>
                                <a className="nav-link btn btn-success btn-lg text-white" href="/logout">Log Out</a>
                            </>
                        ) : (
                            <a className="nav-link btn btn-success btn-lg text-white" href="/login">Sign In</a>
                        )}
                    </div>
                </div>
            </nav>
        </div>
    );
}

export default NavbarComponent;
