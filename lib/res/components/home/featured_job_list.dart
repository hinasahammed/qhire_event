import 'package:qhire_event/gen/assets.gen.dart';
import 'package:qhire_event/model/featured_job_model.dart';

List<FeaturedJobModel> featuredJobList = [
  FeaturedJobModel(
    imageUrl: Assets.icons.amazonIcon.path,
    jobName: "UI/UX Designer",
    companyName: "Amazon",
    location: "California, USA .",
    jobType: "Full Time",
    postDate: "3 day ago",
  ),
  FeaturedJobModel(
    imageUrl: Assets.icons.uberIcon.path,
    jobName: "UI/UX Product",
    companyName: "Uber",
    location: "Bangalore",
    jobType: "Internship",
    postDate: "Today",
  ),
];
