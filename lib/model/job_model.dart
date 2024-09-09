class JobModel {
  final String companyLogo;
  final String companyName;
  final String companyAddress;
  final String jobName;
  final String jobType;
  final String jobExperience;

  JobModel({
    required this.companyLogo,
    required this.companyAddress,
    required this.jobType,
    required this.jobExperience,
    required this.companyName,
    required this.jobName,
  });
}
