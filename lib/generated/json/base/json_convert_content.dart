// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutterreduxtest/list_self/bean/item_detail_bean_entity.dart';
import 'package:flutterreduxtest/generated/json/item_detail_bean_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case ItemDetailBeanEntity:
			return itemDetailBeanEntityFromJson(data as ItemDetailBeanEntity, json) as T;			case ItemDetailBeanData:
			return itemDetailBeanDataFromJson(data as ItemDetailBeanData, json) as T;			case ItemDetailBeanDataData:
			return itemDetailBeanDataDataFromJson(data as ItemDetailBeanDataData, json) as T;			case ItemDetailBeanDataDatasTag:
			return itemDetailBeanDataDatasTagFromJson(data as ItemDetailBeanDataDatasTag, json) as T;			 }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case ItemDetailBeanEntity:
			return itemDetailBeanEntityToJson(data as ItemDetailBeanEntity);			case ItemDetailBeanData:
			return itemDetailBeanDataToJson(data as ItemDetailBeanData);			case ItemDetailBeanDataData:
			return itemDetailBeanDataDataToJson(data as ItemDetailBeanDataData);			case ItemDetailBeanDataDatasTag:
			return itemDetailBeanDataDatasTagToJson(data as ItemDetailBeanDataDatasTag);		 }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'ItemDetailBeanEntity':
			return ItemDetailBeanEntity().fromJson(json);			case 'ItemDetailBeanData':
			return ItemDetailBeanData().fromJson(json);			case 'ItemDetailBeanDataData':
			return ItemDetailBeanDataData().fromJson(json);			case 'ItemDetailBeanDataDatasTag':
			return ItemDetailBeanDataDatasTag().fromJson(json);			   }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'ItemDetailBeanEntity':
			return List<ItemDetailBeanEntity>();			case 'ItemDetailBeanData':
			return List<ItemDetailBeanData>();			case 'ItemDetailBeanDataData':
			return List<ItemDetailBeanDataData>();			case 'ItemDetailBeanDataDatasTag':
			return List<ItemDetailBeanDataDatasTag>();			}
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}