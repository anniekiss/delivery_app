class Endpoints {
  static String baseUrl = "https://api-code.cnticketstravels.com/";

  static String usersUrl = "Auth";
  static String usersLoginUrl = "Auth/login";
  static String emailVerificationUrl = "Auth/Email-Verification";
  static String phoneNoVerificationUrl = "Auth/PhoneNo-Verification";
  static String twoFactorEnabledUrl = "Auth/TwoFactor-Enabled";
  static String forgetPasswordUrl = "Auth/ForgotPassword-RequestToken";
  static String resetPasswordUrl = "Auth/Reset-Password";
  static String profileImageUrl = "Auth/ProfileImage";
  static String uploadUrl = "UploadFile/UploadImage";
  static String retailersUrl = "Retailers";
  static String resendEmailVerificationTokenUrl =
      "Auth/EmailVerification-RequestToken";
  static String contactUsUrl = "Info/ContactUs";
  static String retailersRequestUrl = "Info/RetailerRequest";

  static String weeklyTicketNoUrl = "WeeklyTicketNo";
  static String monthlyTicketNoUrl = "MonthlyTicketNos";

  static String usersTicketsUrl = "usersTickets";
  static String weeklyTicketSalesUrl = "WeeklyTicketDraw";
  static String monthlyTicketSalesUrl = "MonthlyTicketDraw";

  static String drawSchedule = "Admin/AllDrawShedule";
  static String eventUrl = "Event/all-events";
  static String eventDetailsUrl = "Event/single-event/";
  static String eventStatusUrl = "Event/events-status";
  static String eventCategoryUrl = "Event/events-categories";
  static String userInterestedEventUrl = "Event/user-interested-events";
  static String userAttendingEventUrl = "Event/user-attending-events";
  static String randomListEventUrl = "Event/random-event-list";
  static String cnEventUrl = "Event/cn-events-list";
  static String fiveEventStatusUrl = "Event/five-events-status";
  static String fiveRandomEventUrl = "Event/five-event-list";
  static String fiveEventNearYouUrl = "Event/five-events-near-you";
  static String interestedEvent = "Event/event-interested";
  static String attendingEvent = "Event/event-attending";
  static String eventsHost = "Event/host-events";
  static String shareEvent = "Event/event-shares";
  static String addEventDiscussionUrl = "Event/event-discussions";
  static String votingSystemUrl = "EventsShowCompetition";
  static String addACompetitorUrl = "EventsShowCompetition/event-competitors";
  static String addACompetitorVoteUrl =
      "EventsShowCompetition/competitors-voters-count";
  static String addACompetitionReviewUrl =
      "EventsShowCompetition/competition-review";
  static String magazineUrl = "BlogPost/StoryTale-Magazine";

  static String debateDrawTicketNoUrl =
      "EventsShowCompetition/DebateDrawTicketNos";
  static String debateDrawTicketSalesUrl =
      "EventsShowCompetition/DebateDrawResult";
}
