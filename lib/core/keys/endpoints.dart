class Endpoints {
  Endpoints._();

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;
}

class _Auth {
  final login = "/api/v1/auth/login";
  final signup = "/api/v1/auth/signup";
  final verifyOtp = "/api/v1/auth/verify";
  final forgotPassword = "/api/v1/auth/forgotpassword";
  final resendVerificationCode = "/api/v1/auth/resendverification";
  final resetPassword = "/api/v1/auth/resetpassword";
  final updatePassword = "/api/v1/auth/updatepassword";
}


class _Profile {
  final getProfile = "/api/v1/profile/get-profile";
  final setProfile = "/api/v1/profile/set-profile";
  final uploadImage = "/api/v1/profile/upload-image";
  final deleteAccount = "/api/v1/profile/delete-profile";
}


class _Pricing {
  final pricing = "/api/v1/proposal/get-proposals";
  final singlePricing = "/api/v1/proposal/one-proposal/";
  final generatePricing = "/api/v1/proposal/generate-proposal";
  final deleteProposal = "/api/v1/proposal/delete-proposal/";
}


final auth = _Auth();
final userProfile = _Profile();
final pricing = _Pricing();