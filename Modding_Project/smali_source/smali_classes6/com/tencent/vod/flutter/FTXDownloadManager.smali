.class public Lcom/tencent/vod/flutter/FTXDownloadManager;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterDownloadApi;
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXDownloadManager"


# instance fields
.field private isInitDownloadListener:Z

.field private final mDownloadFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;

.field private final mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPreloadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->isInitDownloadListener:Z

    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mPreloadPool:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mMainHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p0}, Lcom/tencent/vod/flutter/messages/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterDownloadApi;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mDownloadFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/FTXDownloadManager;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mDownloadFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/FTXDownloadManager;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onPreLoadCompleteEvent(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/FTXDownloadManager;JILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onPreLoadErrorEvent(JILjava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/FTXDownloadManager;)Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/FTXDownloadManager;JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onPreLoadStartEvent(JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private buildCommonDownloadBundle(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "playPath"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "progress"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getProgress()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDownloadState()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getDownloadEventByState(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "downloadState"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const-string v1, "userName"

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUserName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "duration"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDuration()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string v1, "playableDuration"

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayableDuration()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v1, "size"

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getSize()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    const-string v1, "downloadSize"

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDownloadSize()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_0

    .line 91
    .line 92
    const-string v1, "url"

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAppId()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const-string v3, "appId"

    .line 116
    .line 117
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v2, "fileId"

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v2, "pSign"

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getPSign()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v2, "quality"

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    const-string v2, "token"

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getToken()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    const-string v1, "speed"

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getSpeed()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    const-string v1, "isResourceBroken"

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->isResourceBroken()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    .line 173
    .line 174
    return-object v0
.end method

.method private buildMsgFromDownloadInfo(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
    .locals 4

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPlayPath(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDownloadState()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getDownloadEventByState(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-long v1, v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDownloadState(Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUserName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setUserName(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDuration()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-long v1, v1

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDuration(Ljava/lang/Long;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayableDuration()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-long v1, v1

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPlayableDuration(Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getSize()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setSize(Ljava/lang/Long;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDownloadSize()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDownloadSize(Ljava/lang/Long;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_0

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setUrl(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getProgress()F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    float-to-double v1, v1

    .line 106
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setProgress(Ljava/lang/Double;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAppId()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    int-to-long v2, v2

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setAppId(Ljava/lang/Long;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setFileId(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getPSign()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPSign(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    int-to-long v2, v2

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setQuality(Ljava/lang/Long;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getToken()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setToken(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getSpeed()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    int-to-long v1, v1

    .line 181
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setSpeed(Ljava/lang/Long;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->isResourceBroken()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setIsResourceBroken(Ljava/lang/Boolean;)V

    .line 197
    .line 198
    .line 199
    :cond_2
    return-object v0
.end method

.method private getDownloadInfoFromMsg(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getQuality()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getQuality()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getAppId()Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getAppId()Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    move-object v4, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :goto_2
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getFileId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getPSign()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getUserName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    move-object v1, p0

    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/tencent/vod/flutter/FTXDownloadManager;->parseMediaInfoFromInfo(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method private initDownloadListenerIfNeed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->isInitDownloadListener:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->isInitDownloadListener:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->setListener(Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private onDownloadCallback(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/vod/flutter/FTXDownloadManager$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager$2;-><init>(Lcom/tencent/vod/flutter/FTXDownloadManager;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private onPreLoadCompleteEvent(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "taskId"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string p1, "url"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0xc8

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onPreloadCallback(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private onPreLoadErrorEvent(JILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    cmp-long v1, p1, v1

    .line 9
    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "tmpTaskId"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string p1, "taskId"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "code"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string p1, "url"

    .line 28
    .line 29
    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "msg"

    .line 33
    .line 34
    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/16 p1, 0xc9

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onPreloadCallback(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private onPreLoadStartEvent(JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tmpTaskId"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    const-string p1, "taskId"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string p1, "fileId"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "url"

    .line 22
    .line 23
    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0xca

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "params"

    .line 33
    .line 34
    invoke-static {p6}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->transToMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onPreloadCallback(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private onPreloadCallback(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/vod/flutter/FTXDownloadManager$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager$1;-><init>(Lcom/tencent/vod/flutter/FTXDownloadManager;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private optQuality(Ljava/lang/Integer;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x3e8

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method private parseMediaInfoFromInfo(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 6

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    const-string p5, "default"

    .line 4
    .line 5
    :cond_0
    move-object v5, p5

    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->optQuality(Ljava/lang/Integer;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p2, p3, p4, p1, v5}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getDownloadMediaInfo(ILjava/lang/String;ILjava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p5

    .line 31
    if-nez p5, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    invoke-virtual {p5, p2, v0, v1, v5}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getDownloadMediaInfo(Ljava/lang/String;JLjava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    if-nez p5, :cond_2

    .line 44
    .line 45
    move-object v0, p0

    .line 46
    move-object v1, p1

    .line 47
    move-object v2, p2

    .line 48
    move-object v3, p3

    .line 49
    move-object v4, p4

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/tencent/vod/flutter/FTXDownloadManager;->parseMediaInfoFromInfoByAll(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_2
    return-object p5

    .line 56
    :cond_3
    const/4 p1, 0x0

    .line 57
    return-object p1
.end method

.method private parseMediaInfoFromInfoByAll(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getDownloadMediaInfoList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUserName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {p5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAppId()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ne v4, v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->optQuality(Ljava/lang/Integer;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ne v4, v3, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    :goto_1
    return-object v2

    .line 102
    :cond_4
    const/4 p1, 0x0

    .line 103
    return-object p1
.end method


# virtual methods
.method public deleteDownloadMediaInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->getDownloadInfoFromMsg(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->stopDownload(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->deleteDownloadMediaInfo(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->setValue(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->setListener(Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callback message error:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "FTXDownloadManager"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public getDownloadInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
    .locals 0
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->getDownloadInfoFromMsg(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->buildMsgFromDownloadInfo(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getDownloadList()Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getDownloadMediaInfoList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-direct {p0, v2}, Lcom/tencent/vod/flutter/FTXDownloadManager;->buildMsgFromDownloadInfo(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;->setInfoList(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public hlsKeyVerify(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;Ljava/lang/String;[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->buildCommonDownloadBundle(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "errorCode"

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const-string p2, "errorMsg"

    .line 11
    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 p2, 0x131

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onDownloadCallback(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onDownloadFinish(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->buildCommonDownloadBundle(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x130

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onDownloadCallback(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDownloadProgress(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->buildCommonDownloadBundle(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x12e

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onDownloadCallback(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDownloadStart(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->buildCommonDownloadBundle(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x12d

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onDownloadCallback(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->buildCommonDownloadBundle(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x12f

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->onDownloadCallback(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public resumeDownload(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/FTXDownloadManager;->initDownloadListenerIfNeed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->getDownloadInfoFromMsg(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->startDownload(Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUserName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->startDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public setDownloadHeaders(Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;->getMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->setHeaders(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public startDownload(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)V
    .locals 9
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/FTXDownloadManager;->initDownloadListenerIfNeed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getQuality()Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getQuality()Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getAppId()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getAppId()Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v2, 0x0

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getFileId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getPSign()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->getUserName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v1, v8}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->startDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    if-eqz v2, :cond_3

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    new-instance v3, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-direct {p0, v0}, Lcom/tencent/vod/flutter/FTXDownloadManager;->optQuality(Ljava/lang/Integer;)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x2

    .line 92
    invoke-virtual {v3, p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->setEncryptedLevel(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->startDownload(Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method

.method public startPreLoad(Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .locals 6
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;->getPlayUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;->getPreloadSizeMB()Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;->getPreloadSizeMB()Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    move v2, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;->getPreferredResolution()Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;->getPreferredResolution()Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    :goto_2
    iget-object p1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->getInstance(Landroid/content/Context;)Lcom/tencent/rtmp/downloader/TXVodPreloadManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v5, Lcom/tencent/vod/flutter/FTXDownloadManager$3;

    .line 51
    .line 52
    invoke-direct {v5, p0}, Lcom/tencent/vod/flutter/FTXDownloadManager$3;-><init>(Lcom/tencent/vod/flutter/FTXDownloadManager;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->startPreload(Ljava/lang/String;FJLcom/tencent/rtmp/downloader/ITXVodPreloadListener;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;-><init>()V

    .line 62
    .line 63
    .line 64
    int-to-long v1, p1

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->setValue(Ljava/lang/Long;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public startPreLoadByParams(Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;)V
    .locals 2
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mPreloadPool:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/vod/flutter/FTXDownloadManager$4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager$4;-><init>(Lcom/tencent/vod/flutter/FTXDownloadManager;Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public stopDownload(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/FTXDownloadManager;->initDownloadListenerIfNeed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->getDownloadInfoFromMsg(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->getInstance()Lcom/tencent/rtmp/downloader/TXVodDownloadManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadManager;->stopDownload(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public stopPreLoad(Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;)V
    .locals 1
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->getValue()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager;->mFlutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->getInstance(Landroid/content/Context;)Lcom/tencent/rtmp/downloader/TXVodPreloadManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->getValue()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->stopPreload(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public success()V
    .locals 0

    .line 1
    return-void
.end method
