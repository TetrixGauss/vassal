enum NetworkResponseStatus { success, networkError, failed }

enum LoginStatus {
  login,
  logInFailed,
  logInSuccessful,
  logInLoading,
  logInWaiting,
  forgotPassword,
  forgotPasswordLoading,
  resetPasswordSuccessful,
  resetPasswordFailed,
  register,
  registerSuccessful,
  registerFailed,

}

enum DashboardStatus {
  init,
  home,
  services,
  points,
  blog,
  blogFromHome,
  notifications,
  notLoggedIn
}

enum HomeStatus {
  home,
  homeLoading,
  showBlogs,
  goToBlog,
  goToService,
  addAppointment
}

enum BlogStatus {
  initBlog,
  home,
  blogLoading,
  showBlogs,
  goToBlog,
}

enum ServiceStatus {
  initServices,
  servicesLoading,
  showServices,
  goToService,
  goToCategory,
}

enum PointsStatus {
  initPoints,
  pointsLoading,
  showPoints

}

enum SettingsStatus {
  settingsInitial,
  gdpr,
  exit
}

enum NotificationsStatus {
  noNotifications,
  showingNotifications,
  notificationPressed,
  back
}

enum SplashStatus{
  init,
  logIn,
  dashboard,
  checkLoggingIn
}

enum ProfileStatus{
  init,
  showUser,
  loading,
  addAppointment,
  logOut
}

enum ChatStatus{
  init,
  showMessages
}

