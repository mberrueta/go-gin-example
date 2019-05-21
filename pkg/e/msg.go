package e

var MsgFlags = map[int]string{
	SUCCESS:                         "ok",
	ERROR:                           "fail",
	INVALID_PARAMS:                  "invalid_params",
	ERROR_EXIST_TAG:                 "error_exist_tag",
	ERROR_EXIST_TAG_FAIL:            "error_exist_tag_fail",
	ERROR_NOT_EXIST_TAG:             "error_not_exist_tag",
	ERROR_GET_TAGS_FAIL:             "error_get_tags_fail",
	ERROR_COUNT_TAG_FAIL:            "error_count_tag_fail",
	ERROR_ADD_TAG_FAIL:              "error_add_tag_fail",
	ERROR_EDIT_TAG_FAIL:             "error_edit_tag_fail",
	ERROR_DELETE_TAG_FAIL:           "error_delete_tag_fail",
	ERROR_EXPORT_TAG_FAIL:           "error_export_tag_fail",
	ERROR_IMPORT_TAG_FAIL:           "error_import_tag_fail",
	ERROR_NOT_EXIST_ARTICLE:         "error_not_exist_article",
	ERROR_ADD_ARTICLE_FAIL:          "error_add_article_fail",
	ERROR_DELETE_ARTICLE_FAIL:       "error_delete_article_fail",
	ERROR_CHECK_EXIST_ARTICLE_FAIL:  "error_check_exist_article_fail",
	ERROR_EDIT_ARTICLE_FAIL:         "error_edit_article_fail",
	ERROR_COUNT_ARTICLE_FAIL:        "error_count_article_fail",
	ERROR_GET_ARTICLES_FAIL:         "error_get_articles_fail",
	ERROR_GET_ARTICLE_FAIL:          "error_get_article_fail",
	ERROR_GEN_ARTICLE_POSTER_FAIL:   "error_gen_article_poster_fail",
	ERROR_AUTH_CHECK_TOKEN_FAIL:     "error_auth_check_token_fail",
	ERROR_AUTH_CHECK_TOKEN_TIMEOUT:  "error_auth_check_token_timeout",
	ERROR_AUTH_TOKEN:                "error_auth_token",
	ERROR_AUTH:                      "error_auth",
	ERROR_UPLOAD_SAVE_IMAGE_FAIL:    "error_upload_save_image_fail",
	ERROR_UPLOAD_CHECK_IMAGE_FAIL:   "error_upload_check_image_fail",
	ERROR_UPLOAD_CHECK_IMAGE_FORMAT: "error_upload_check_image_format",
}

// GetMsg get error information based on Code
func GetMsg(code int) string {
	msg, ok := MsgFlags[code]
	if ok {
		return msg
	}

	return MsgFlags[ERROR]
}
