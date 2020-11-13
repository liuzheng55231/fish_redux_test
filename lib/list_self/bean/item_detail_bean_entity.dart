import 'package:flutterreduxtest/generated/json/base/json_convert_content.dart';

class ItemDetailBeanEntity with JsonConvert<ItemDetailBeanEntity> {
	ItemDetailBeanData data;
	int errorCode;
	String errorMsg;



}

class ItemDetailBeanData with JsonConvert<ItemDetailBeanData> {
	int curPage;
	List<ItemDetailBeanDataData> datas;
	int offset;
	bool over;
	int pageCount;
	int size;
	int total;
}

class ItemDetailBeanDataData with JsonConvert<ItemDetailBeanDataData> {
	String apkLink;
	int audit;
	String author;
	bool canEdit;
	int chapterId;
	String chapterName;
	bool collect;
	int courseId;
	String desc;
	String descMd;
	String envelopePic;
	bool fresh;
	int id;
	String link;
	String niceDate;
	String niceShareDate;
	String origin;
	String prefix;
	String projectLink;
	int publishTime;
	int realSuperChapterId;
	int selfVisible;
	int shareDate;
	String shareUser;
	int superChapterId;
	String superChapterName;
	List<ItemDetailBeanDataDatasTag> tags;
	String title;
	int type;
	int userId;
	int visible;
	int zan;
}

class ItemDetailBeanDataDatasTag with JsonConvert<ItemDetailBeanDataDatasTag> {
	String name;
	String url;
}


