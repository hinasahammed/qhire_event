import 'package:qhire_event/assets/icons/icon_asset.dart';
import 'package:qhire_event/model/featured_job_model.dart';

List<FeaturedJobModel> featuredJobList = [
  FeaturedJobModel(
    imageUrl: IconAsset.amazonIcon,
    jobName: "UI/UX Designer",
    companyName: "Amazon",
    location: "California, USA .",
    jobType: "Full Time",
    postDate: "3 day ago",
  ),
  FeaturedJobModel(
    imageUrl: IconAsset.uberIcon,
    jobName: "UI/UX Product",
    companyName: "Uber",
    location: "Bangalore",
    jobType: "Internship",
    postDate: "Today",
  ),
];
