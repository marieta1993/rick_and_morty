abstract class EndPoints {
  static const String login = '/login';
  static const String logout = '/logout';
  static const String signup = '/signup';
  static const String verifyAccount = '/verify-account/{code}';
  static const String resendVerificationCode =
      '/resend-verification-code/{email}';
  static const String employees = '/admin/employees/{id}';
  static const String setForgotPasswordToken = '/set-forgot-password-token';
  static const String sendVerifyCode = '/send-verify-code';
  static const String checkCode = '/check-code';
  static const String changePassword = '/change-password';
  static const String uploadProfilePicture = '/files/upload/profile-picture';
  static const String isVerified = '/is-verified';
  static const String verify = '/verify';
  static const String isTokenVerified = '/is-token-expired';
  static const String employeesBank = '/admin/employees/bank/{id}';
  static const String employeesEmployment = '/admin/employees/employment/{id}';
  static const String employeesPersonal = '/admin/employees/personal/{id}';
  static const String departments = '/admin/employees/departments/{name}';
  static const String departmentsIds = '/admin/departments/ids/{ids}';
  static const String departmentsAll = '/admin/departments/all';
  static const String createDepartment = '/admin/departments';
  static const String deleteDepartment = '/admin/departments/{id}';
  static const String checkDeleteDepartment =
      '/admin/departments/check-delete/{id}';
  static const String employeesIds = '/admin/employees/ids';
  static const String projectsNames = '/admin/projects/names/{id}';
  static const String timeOffRequests =
      '/time-off/status/{status}/{fromDate}/{toDate}';
  static const String timeOffRequestsByEmployeeId =
      '/time-off/{id}/{fromDate}/{toDate}';
  static const String createTimeOff = '/time-off';
  static const String deleteTimeOff = '/time-off/{requestId}';
  static const String employeesAnalytics = '/admin/employees/analytics';
  static const String employeesDiscordStatistics =
      '/admin/employees/discord-statistics';
  static const String handbookCompany = '/admin/handbook/company/{id}';
  static const String handbookSeen = '/admin/handbook/handbook-seen';
  static const String handbook = '/admin/handbook';
  static const String timeOffDuration = '/time-off/duration/{start}/{end}';
  static const String employeesBirthdays = '/admin/employees/birthdays';
  static const String calendarBirthdays = '/admin/employees/calendar-birthdays';
  static const String staff = '/admin/employees/staff/{isInvited}';
  static const String employeesSearch = '/admin/employees/search';
  static const String employeeStatus = '/admin/employees/status/{id}/{status}';
  static const String departmentsWithEmployees =
      '/admin/departments/with-employees';

  static const String projectsEmployeesWithStatus = '/admin/projects/{id}';
  static const String projectsAllWithStatus = '/admin/projects';
  static const String project = '/admin/projects/project/{id}';

  static const String employeesVerified = '/admin/employees/verified';

  static const String employeesVerifiedManager =
      '/admin/employees/verified/manager/{id}';

  static const String filesEmployee = '/files/employee/{id}';
  static const String files = '/files/{id}';
  static const String filesDownload = "/files/download/{docId}";
  static const String filesUpload = '/files/upload';
  static const String badgesAll = '/badge/all?page={page}&size={size}';
  static const String badgesByCategory =
      '/badge/all?page={page}&size={size}&categoryId={categoryId}';
  static const String badgeImage = '/files/badge/{badgeId}';
  static const String badgeCategories = '/badge/categories?status={status}';
  static const String badgeSend = '/badge/send';
  static const String isManager = '/admin/employees/manager/{employeeId}';
  static const String isEmployeeManager = '/admin/employees/employee-manager';
  static const String badgeAllReceived = '/badge/all-received/{receiverId}';
  static const String badgeAllSend = '/badge/all-sent/{senderId}';
  static const String badgeReceivers = '/badge/receivers/{id}';
  static const String timeOffManager = '/time-off/manager/{managerId}';
  static const String timeOffStatus = '/time-off/status';
  static const String timeOffReject = '/time-off/reject';
  static const String timeOffApprove = '/time-off/approve';
  static const String timeOffDecision = '/time-off/decision';
  static const String timeOffPendingCount = '/time-off/pending-count';
  static const String feedback = '/feedback';
  static const String feedbackById = '/feedback/{id}';
  static const String feedbackForManager = '/feedback/manager/{id}';
  static const String feedbackBySenderId = '/feedback/by-sender-id';
  static const String feedbackByReceiverId = '/feedback/by-receiver-id';
  static const String feedbackRequests = '/feedback/requests';
  static const String feedbackRequestsQuantity = '/feedback/requests/quantity';
  static const String feedbackByRequestId = '/feedback/by-request-id/{id}';
  static const String feedbackRequestSend = '/feedback/request/send';
  static const String feedbackSkillType = '/feedback/skill/type/{type}';
  static const String updatePrivacyLevel = '/feedback/{id}/privacy-level';
  static const String goalsManager = '/goals/manager/{managerId}';
  static const String goalsEmployee = '/goals/employee/{employeeId}';
  static const String goalDelete = '/goals/{goalId}';
  static const String goal = '/goals/{goalId}';
  static const String goals = '/goals';
  static const String goalsEdit = '/goals/edit';
  static const String uploadAttachment = '/files/upload/attachment';
  static const String profileTimeOffAll = '/time-off/all/{userId}';
  static const String profileTimeOffUpcoming = '/time-off/upcoming/{userId}';
  static const String profileTimeOffHistory = '/time-off/history/{userId}';
  static const String profileTimeOffStatusCount =
      '/time-off/status-count/{userId}';
  static const String employeesLink = '/admin/employees/link/{id}';
  static const String employeeNote = '/employee/note/{id}';
  static const String employeeNoteCreate = '/employee/note';
  static const String attachmentDownload = "/files/download/attachment";
  static const String attachmentDelete = "/files/delete/attachment";
  static const String deleteProfilePicture =
      "/files/delete/profile-picture/{id}";
  static const String filesIdImage = "/files/{id}/image";
  static const String activityFeed = "/activity-feed";
  static const String activityFeedUnreadCount = '/activity-feed/status/unread-count';
  static const String activityFeedStatusMarkRead = '/activity-feed/status/mark-read';
  static const String employeeContract =
      "/admin/employees/contract/{employeeId}";
  static const String employeeContractEdit = "/admin/employees/contract/edit";
  static const String contractFile = "/files/{id}";
  static const String addEmployees = "/admin/employees";
  static const String deleteEmployees = "/admin/employees/{id}";
  static const String employeesRequests = "/admin/employees/requests";
  static const String badge = "/badge";
  static const String badgeUpdate = "/badge/update";
  static const String badgeArchived = "/badge/archived";
  static const String badgeLeaders = "/badge/leaders";
  static const String topPerformers = "/admin/employees/top-performers";
  static const String goalReject = '/goals/reject';
  static const String goalApprove = '/goals/approve';
  static const String resetPushBadgeCount =
      '/admin/employees/remove-badge-count/{employeeId}';
  static const String goalsPendingCount = '/goals/pending-count';
  static const String roles = '/role';
  static const String rolesAll = '/role/all-role';
  static const String roleAllCategoryPermissions =
      '/role/all-category-permissions';
  static const String updatePermissionsInRole =
      '/role/update-permissions-in-role';
  static const String createRole = '/role';
  static const String updateRole = '/role/edit-role';
  static const String deleteRole = '/role/delete-role/{id}';
  static const String eventRequests = '/event';
  static const String allEventsByEmployeeId = '/event/{id}';
  static const String updateEvent = '/event';
  static const String deleteEvent = '/event/{id}';
  static const String employeesRoles = '/role/employees-roles';
  static const String roleEmployees = '/role/employees';
  static const String roleEmployeesSearch = '/role/search/role';
  static const String updateRoleOfUser = '/role/update-role-of-user';
  static const String eventGuests = '/event/guests/{id}';
  static const String guestsRoles = '/event/guest-roles/{id}';
  static const String assetsById = '/assets/{id}';
  static const String assetsSearch = '/assets/search';
  static const String assets = '/assets';
  static const String assetCategories = '/asset-categories';
  static const String assetCategoriesById = '/asset-categories/{id}';
  static const String assetsWithImage = '/assets/with-image';
  static const String aiChatSessions = '/ai/chat/sessions';
  static const String aiChat = '/ai/chat';
  static const String aiChatSessionMessages = '/ai/chat/sessions/{sessionId}/messages';
}
