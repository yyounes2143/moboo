.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TXVodDownloadMediaMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private downloadSize:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private downloadState:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private duration:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isResourceBroken:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pSign:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playPath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playableDuration:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private progress:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private quality:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private speed:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPlayPath(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setProgress(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDownloadState(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setUserName(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDuration(Ljava/lang/Long;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPlayableDuration(Ljava/lang/Long;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Long;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setSize(Ljava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDownloadSize(Ljava/lang/Long;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setUrl(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 v1, 0x9

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setAppId(Ljava/lang/Long;)V

    .line 106
    .line 107
    .line 108
    const/16 v1, 0xa

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setFileId(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/16 v1, 0xb

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPSign(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/16 v1, 0xc

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setQuality(Ljava/lang/Long;)V

    .line 139
    .line 140
    .line 141
    const/16 v1, 0xd

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setToken(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/16 v1, 0xe

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/Long;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setSpeed(Ljava/lang/Long;)V

    .line 161
    .line 162
    .line 163
    const/16 v1, 0xf

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setIsResourceBroken(Ljava/lang/Boolean;)V

    .line 172
    .line 173
    .line 174
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playPath:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playPath:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->progress:Ljava/lang/Double;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->progress:Ljava/lang/Double;

    .line 33
    .line 34
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadState:Ljava/lang/Long;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadState:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->userName:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->userName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->duration:Ljava/lang/Long;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->duration:Ljava/lang/Long;

    .line 63
    .line 64
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playableDuration:Ljava/lang/Long;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playableDuration:Ljava/lang/Long;

    .line 73
    .line 74
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->size:Ljava/lang/Long;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->size:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadSize:Ljava/lang/Long;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadSize:Ljava/lang/Long;

    .line 93
    .line 94
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->url:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->url:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->appId:Ljava/lang/Long;

    .line 111
    .line 112
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->appId:Ljava/lang/Long;

    .line 113
    .line 114
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->fileId:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->fileId:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->pSign:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->pSign:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->quality:Ljava/lang/Long;

    .line 141
    .line 142
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->quality:Ljava/lang/Long;

    .line 143
    .line 144
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->token:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->token:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    .line 160
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->speed:Ljava/lang/Long;

    .line 161
    .line 162
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->speed:Ljava/lang/Long;

    .line 163
    .line 164
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_2

    .line 169
    .line 170
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->isResourceBroken:Ljava/lang/Boolean;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->isResourceBroken:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_2

    .line 179
    .line 180
    return v0

    .line 181
    :cond_2
    :goto_0
    return v1
.end method

.method public getAppId()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->appId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadSize()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadState()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadState:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->duration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->fileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsResourceBroken()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->isResourceBroken:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPSign()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->pSign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayableDuration()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playableDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->progress:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQuality()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->quality:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->size:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpeed()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->speed:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playPath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->progress:Ljava/lang/Double;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadState:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->userName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->duration:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playableDuration:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->size:Ljava/lang/Long;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadSize:Ljava/lang/Long;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->url:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->appId:Ljava/lang/Long;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->fileId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->pSign:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->quality:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->token:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->speed:Ljava/lang/Long;

    .line 32
    .line 33
    move-object/from16 v16, v1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->isResourceBroken:Ljava/lang/Boolean;

    .line 36
    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    const/16 v17, 0x0

    .line 42
    .line 43
    aput-object v16, v0, v17

    .line 44
    .line 45
    const/16 v16, 0x1

    .line 46
    .line 47
    aput-object v2, v0, v16

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    aput-object v3, v0, v2

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    aput-object v4, v0, v2

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    aput-object v5, v0, v2

    .line 57
    .line 58
    const/4 v2, 0x5

    .line 59
    aput-object v6, v0, v2

    .line 60
    .line 61
    const/4 v2, 0x6

    .line 62
    aput-object v7, v0, v2

    .line 63
    .line 64
    const/4 v2, 0x7

    .line 65
    aput-object v8, v0, v2

    .line 66
    .line 67
    const/16 v2, 0x8

    .line 68
    .line 69
    aput-object v9, v0, v2

    .line 70
    .line 71
    const/16 v2, 0x9

    .line 72
    .line 73
    aput-object v10, v0, v2

    .line 74
    .line 75
    const/16 v2, 0xa

    .line 76
    .line 77
    aput-object v11, v0, v2

    .line 78
    .line 79
    const/16 v2, 0xb

    .line 80
    .line 81
    aput-object v12, v0, v2

    .line 82
    .line 83
    const/16 v2, 0xc

    .line 84
    .line 85
    aput-object v13, v0, v2

    .line 86
    .line 87
    const/16 v2, 0xd

    .line 88
    .line 89
    aput-object v14, v0, v2

    .line 90
    .line 91
    const/16 v2, 0xe

    .line 92
    .line 93
    aput-object v15, v0, v2

    .line 94
    .line 95
    const/16 v2, 0xf

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    return v0
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->appId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadSize(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadState(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadState:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->duration:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->fileId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIsResourceBroken(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->isResourceBroken:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setPSign(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->pSign:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayableDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playableDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->progress:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setQuality(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->quality:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->size:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->speed:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toList()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playPath:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->progress:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadState:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->userName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->duration:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->playableDuration:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->size:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->downloadSize:Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->url:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->appId:Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->fileId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->pSign:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->quality:Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->token:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->speed:Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->isResourceBroken:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    return-object v0
.end method
