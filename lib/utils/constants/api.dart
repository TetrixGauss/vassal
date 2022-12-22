class Api{

  ///api key

  // static const String API_KEY = "c4ecd0bec32182292c9d96ef9f6bc72917028d1b6c0628d1d517f7738c5b11749b422718900b00f37b8754bf7720aeb3e1806160680395a1c45f7365d6c7d0f8";
  // static const String BASE_URL = "https://staging-vassal.developerthis.gr/api/";
  static const String BASE_URL = "https://staging.developerthis.gr/api/";

  ///user
  static const String LOGIN_URL = "${BASE_URL}login";
  static const String LOGOUT_URL = "${BASE_URL}logout";
  static const String REGISTER_URL = "${BASE_URL}register";
  static const String USER_URL = "${BASE_URL}user";
  static const String RESET_URL = "${BASE_URL}reset";
  static const String BLOG_POSTS_URL = "${BASE_URL}blogs";
  static const String SERVICES_URL = "${BASE_URL}services";
  static const String CATEGORIES_URL = "${BASE_URL}categories";
  static const String SAVE_APPOINTMENTS_URL = "${BASE_URL}save/calendar";
  static const String APPOINTMENTS_URL = "${BASE_URL}calendar";

  static const String PERMISSIONS_URL = "${BASE_URL}permissions";
  static const String CHECK_URL = "${BASE_URL}check";
  static const String REFRESH_URL = "${BASE_URL}refresh";
  static const String BOOKINGS_URL = "${BASE_URL}calendar";

  static const String MESSAGES_URL = "${BASE_URL}messages";
  static const String SENT_MESSAGES_URL = "sent";
  static const String PATIENTS_URL = "${BASE_URL}user";
  static const String QUESTIONNAIRES_URL = "${BASE_URL}questionnaire";
  static const String DOCTORS_URL = "${BASE_URL}doctors";

  static const String WEARABLES_URL = "${BASE_URL}activity_tracking";

  static const String CHAT_SEND_URL = "${BASE_URL}message/send";
  static const String CONVERSATION_URL = "${BASE_URL}conversation";

  static const String COUPONS_URL = "${BASE_URL}reedem-coupon";


}