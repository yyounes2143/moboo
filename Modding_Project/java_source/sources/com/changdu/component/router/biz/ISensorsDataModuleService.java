package com.changdu.component.router.biz;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface ISensorsDataModuleService {
    public static final String APP_CLIENT_BIZ_PARAM_BOOK_ID = "bizBookId";
    public static final String APP_CLIENT_BIZ_PARAM_CHAPTER_ID = "bizChapterId";
    public static final String APP_CLIENT_BIZ_PARAM_CHAPTER_INDEX = "bizChapterIndex";
    public static final String APP_CLIENT_BIZ_PARAM_DOWNLOAD_URL = "bizDownloadUrl";
    public static final String APP_CLIENT_BIZ_PARAM_ERROR_CODE = "bizErrorCode";
    public static final String APP_CLIENT_BIZ_PARAM_URL = "bizUrl";
    public static final String APP_CLIENT_BIZ_TYPE_BOOK_ID_ERROR = "BookIdError";
    public static final String APP_CLIENT_BIZ_TYPE_CHAPTER_DOWNLOAD_ERROR = "ChapterDownloadError";
    public static final String APP_CLIENT_BIZ_TYPE_CHAPTER_PARSE_ERROR = "ChapterParseError";
    public static final String APP_CLIENT_BIZ_TYPE_CLIENT_EXCEPTION = "ClientException";
    public static final String APP_CLIENT_BIZ_TYPE_NETWORK_ERROR = "NetworkError";
    public static final String APP_CLIENT_BIZ_TYPE_PAY_BIZ_ERROR = "PayBizError";
    public static final String APP_CLIENT_BIZ_TYPE_WEB_VIEW_ERROR = "WebViewError";
    public static final int AUTO_TRACK_TYPE_APP_END = 2;
    public static final int AUTO_TRACK_TYPE_APP_START = 1;
    public static final int AUTO_TRACK_TYPE_CLICK = 4;
    public static final int AUTO_TRACK_TYPE_NONE = 0;
    public static final int AUTO_TRACK_TYPE_VIEW_SCREEN = 8;

    void ensureProperties();

    String getAnonymousId();

    void initSensorsData(Context context);

    void reportAppClientBiz(String str, String str2, String str3, String str4, String str5, HashMap<String, Object> hashMap);

    void reportCDClick(String str);

    void reportCDClickPosition(long j);

    void reportCDExposure(long j, ArrayList<String> arrayList);

    void reportCDExposure(String str, ArrayList<String> arrayList);

    void reportCDTiming(long j, int i, long j2, HashMap<String, Object> hashMap);

    void reportEvent(String str, Map<String, Object> map);

    void reportEvent(String str, JSONObject jSONObject);

    void reportInstallation();

    void reportLaunch();

    void reportLogin(String str);

    void reportUpgrade(String str, String str2, String str3, String str4);

    void setAutoTrackEventType(int i);

    void setEnableLog(boolean z);

    void setIgnoreAutoTrackFragments(List<Class<?>> list);

    void setServerUrl(String str);
}
