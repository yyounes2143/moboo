.class Lcom/tencent/vod/flutter/FTXDownloadManager$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/FTXDownloadManager;->startPreLoadByParams(Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

.field final synthetic val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/FTXDownloadManager;Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPlayUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/tencent/rtmp/TXPlayInfoParams;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPlayUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Lcom/tencent/rtmp/TXPlayInfoParams;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v6, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getAppId()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getAppId()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    new-instance v2, Lcom/tencent/rtmp/TXPlayInfoParams;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getFileId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPSign()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-direct {v2, v1, v3, v4}, Lcom/tencent/rtmp/TXPlayInfoParams;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object v6, v2

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getHttpHeader()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getHttpHeader()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v6, v1}, Lcom/tencent/rtmp/TXPlayInfoParams;->setHeaders(Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$300(Lcom/tencent/vod/flutter/FTXDownloadManager;)Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->getInstance(Landroid/content/Context;)Lcom/tencent/rtmp/downloader/TXVodPreloadManager;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPreloadSizeMB()Ljava/lang/Double;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPreloadSizeMB()Ljava/lang/Double;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    :goto_2
    move v7, v1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    const/4 v1, 0x0

    .line 116
    goto :goto_2

    .line 117
    :goto_3
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getTmpPreloadTaskId()Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getTmpPreloadTaskId()Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    goto :goto_4

    .line 136
    :cond_4
    const-wide/16 v1, -0x1

    .line 137
    .line 138
    :goto_4
    iget-object v3, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPreferredResolution()Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-wide/16 v11, 0x0

    .line 145
    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    iget-object v3, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPreferredResolution()Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    move-wide v8, v3

    .line 159
    goto :goto_5

    .line 160
    :cond_5
    move-wide v8, v11

    .line 161
    :goto_5
    new-instance v10, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;

    .line 162
    .line 163
    invoke-direct {v10, p0, v1, v2}, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;-><init>(Lcom/tencent/vod/flutter/FTXDownloadManager$4;J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {v5 .. v10}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager;->startPreload(Lcom/tencent/rtmp/TXPlayInfoParams;FJLcom/tencent/rtmp/downloader/ITXVodFilePreloadListener;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-nez v0, :cond_6

    .line 171
    .line 172
    cmp-long v0, v1, v11

    .line 173
    .line 174
    if-ltz v0, :cond_6

    .line 175
    .line 176
    iget-object v8, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 177
    .line 178
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getFileId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->val$msg:Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->getPlayUrl()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    new-instance v14, Landroid/os/Bundle;

    .line 191
    .line 192
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 193
    .line 194
    .line 195
    move-wide v9, v1

    .line 196
    move v11, v3

    .line 197
    invoke-static/range {v8 .. v14}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$400(Lcom/tencent/vod/flutter/FTXDownloadManager;JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    .line 199
    .line 200
    :cond_6
    return-void
.end method
