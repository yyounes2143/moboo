.class public interface abstract Lcom/changdu/component/router/biz/ISensorsDataModuleService;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final APP_CLIENT_BIZ_PARAM_BOOK_ID:Ljava/lang/String; = "bizBookId"

.field public static final APP_CLIENT_BIZ_PARAM_CHAPTER_ID:Ljava/lang/String; = "bizChapterId"

.field public static final APP_CLIENT_BIZ_PARAM_CHAPTER_INDEX:Ljava/lang/String; = "bizChapterIndex"

.field public static final APP_CLIENT_BIZ_PARAM_DOWNLOAD_URL:Ljava/lang/String; = "bizDownloadUrl"

.field public static final APP_CLIENT_BIZ_PARAM_ERROR_CODE:Ljava/lang/String; = "bizErrorCode"

.field public static final APP_CLIENT_BIZ_PARAM_URL:Ljava/lang/String; = "bizUrl"

.field public static final APP_CLIENT_BIZ_TYPE_BOOK_ID_ERROR:Ljava/lang/String; = "BookIdError"

.field public static final APP_CLIENT_BIZ_TYPE_CHAPTER_DOWNLOAD_ERROR:Ljava/lang/String; = "ChapterDownloadError"

.field public static final APP_CLIENT_BIZ_TYPE_CHAPTER_PARSE_ERROR:Ljava/lang/String; = "ChapterParseError"

.field public static final APP_CLIENT_BIZ_TYPE_CLIENT_EXCEPTION:Ljava/lang/String; = "ClientException"

.field public static final APP_CLIENT_BIZ_TYPE_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field public static final APP_CLIENT_BIZ_TYPE_PAY_BIZ_ERROR:Ljava/lang/String; = "PayBizError"

.field public static final APP_CLIENT_BIZ_TYPE_WEB_VIEW_ERROR:Ljava/lang/String; = "WebViewError"

.field public static final AUTO_TRACK_TYPE_APP_END:I = 0x2

.field public static final AUTO_TRACK_TYPE_APP_START:I = 0x1

.field public static final AUTO_TRACK_TYPE_CLICK:I = 0x4

.field public static final AUTO_TRACK_TYPE_NONE:I = 0x0

.field public static final AUTO_TRACK_TYPE_VIEW_SCREEN:I = 0x8


# virtual methods
.method public abstract ensureProperties()V
.end method

.method public abstract getAnonymousId()Ljava/lang/String;
.end method

.method public abstract initSensorsData(Landroid/content/Context;)V
.end method

.method public abstract reportAppClientBiz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportCDClick(Ljava/lang/String;)V
.end method

.method public abstract reportCDClickPosition(J)V
.end method

.method public abstract reportCDExposure(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportCDExposure(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportCDTiming(JIJLjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract reportInstallation()V
.end method

.method public abstract reportLaunch()V
.end method

.method public abstract reportLogin(Ljava/lang/String;)V
.end method

.method public abstract reportUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAutoTrackEventType(I)V
.end method

.method public abstract setEnableLog(Z)V
.end method

.method public abstract setIgnoreAutoTrackFragments(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public abstract setServerUrl(Ljava/lang/String;)V
.end method
