.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x1f4

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->b:I

    .line 7
    .line 8
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method

.method private a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V
    .locals 11

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    new-instance v2, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBufferDuration()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    int-to-long v5, v5

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move-wide v0, v5

    .line 32
    :cond_1
    const-wide/16 v7, 0x3e8

    .line 33
    .line 34
    div-long v9, v0, v7

    .line 35
    .line 36
    long-to-int v9, v9

    .line 37
    const-string v10, "EVT_PLAY_PROGRESS"

    .line 38
    .line 39
    invoke-virtual {v2, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    div-long v9, v5, v7

    .line 43
    .line 44
    long-to-int v9, v9

    .line 45
    const-string v10, "EVT_PLAY_DURATION"

    .line 46
    .line 47
    invoke-virtual {v2, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    div-long v7, v3, v7

    .line 51
    .line 52
    long-to-int v7, v7

    .line 53
    const-string v8, "EVT_PLAYABLE_DURATION"

    .line 54
    .line 55
    invoke-virtual {v2, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    const-string v7, "EVT_PLAY_PROGRESS_MS"

    .line 59
    .line 60
    long-to-int v8, v0

    .line 61
    invoke-virtual {v2, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v7, "EVT_PLAY_DURATION_MS"

    .line 65
    .line 66
    long-to-int v5, v5

    .line 67
    invoke-virtual {v2, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string v5, "EVT_PLAYABLE_DURATION_MS"

    .line 71
    .line 72
    long-to-int v3, v3

    .line 73
    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v3, v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPdtTimeMs(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    const-string v3, "EVT_PLAY_PDT_TIME_MS"

    .line 97
    .line 98
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getRate()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const-string v1, "EVT_PLAYABLE_RATE"

    .line 116
    .line 117
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget v0, v0, Lcom/tencent/liteav/txcplayer/e;->l:I

    .line 131
    .line 132
    if-gtz v0, :cond_4

    .line 133
    .line 134
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/16 v1, 0x1f4

    .line 139
    .line 140
    iput v1, v0, Lcom/tencent/liteav/txcplayer/e;->l:I

    .line 141
    .line 142
    :cond_4
    const/16 v0, 0x67

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    .line 146
    .line 147
    if-nez p2, :cond_5

    .line 148
    .line 149
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    iget p2, p2, Lcom/tencent/liteav/txcplayer/e;->l:I

    .line 154
    .line 155
    int-to-long v3, p2

    .line 156
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    .line 158
    .line 159
    :cond_5
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const/16 p2, 0x7d5

    .line 164
    .line 165
    invoke-interface {p1, p2, v2}, Lcom/tencent/liteav/txcplayer/d;->a(ILandroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 12
    .line 13
    if-eqz v2, :cond_7

    .line 14
    .line 15
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget v3, v0, Landroid/os/Message;->what:I

    .line 24
    .line 25
    const/16 v4, 0x64

    .line 26
    .line 27
    packed-switch v3, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :pswitch_0
    const/4 v0, 0x0

    .line 33
    invoke-direct {v1, v2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x837

    .line 41
    .line 42
    const-string v3, "VOD network reconnected"

    .line 43
    .line 44
    invoke-static {v2, v0, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    const/16 v5, 0x7d3

    .line 51
    .line 52
    if-eq v3, v5, :cond_3

    .line 53
    .line 54
    const/16 v5, 0x7d6

    .line 55
    .line 56
    if-eq v3, v5, :cond_2

    .line 57
    .line 58
    const/16 v5, 0x7e3

    .line 59
    .line 60
    if-eq v3, v5, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v6, 0x3

    .line 68
    if-ne v5, v6, :cond_4

    .line 69
    .line 70
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eq v5, v6, :cond_4

    .line 75
    .line 76
    const/16 v5, 0x7d4

    .line 77
    .line 78
    const-string v7, "Playback started"

    .line 79
    .line 80
    invoke-static {v2, v5, v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v6}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    .line 88
    .line 89
    const/16 v4, 0x67

    .line 90
    .line 91
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 v4, 0x1

    .line 96
    invoke-direct {v1, v2, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_0
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-interface {v4, v3, v5}, Lcom/tencent/liteav/txcplayer/d;->a(ILandroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v4, v2, v3, v0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->sendPlayerEventToPlugin(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;ILandroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_3
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-nez v0, :cond_5

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_5
    :try_start_0
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const/16 v3, 0xce

    .line 143
    .line 144
    invoke-interface {v0, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v5

    .line 148
    long-to-float v0, v5

    .line 149
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const/16 v7, 0xd0

    .line 162
    .line 163
    invoke-interface {v3, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    const-wide/16 v9, 0x0

    .line 168
    .line 169
    cmp-long v3, v5, v9

    .line 170
    .line 171
    if-lez v3, :cond_6

    .line 172
    .line 173
    const-wide/16 v9, 0x3e8

    .line 174
    .line 175
    mul-long/2addr v7, v9

    .line 176
    div-long/2addr v7, v5

    .line 177
    long-to-float v3, v7

    .line 178
    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    goto :goto_2

    .line 181
    :cond_6
    const/4 v3, 0x0

    .line 182
    :goto_1
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    const/16 v6, 0x12e

    .line 187
    .line 188
    invoke-interface {v5, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v5

    .line 192
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    const/16 v8, 0x12d

    .line 197
    .line 198
    invoke-interface {v7, v8}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 199
    .line 200
    .line 201
    move-result-wide v7

    .line 202
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    const/16 v10, 0x12f

    .line 207
    .line 208
    invoke-interface {v9, v10}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 209
    .line 210
    .line 211
    move-result-wide v9

    .line 212
    new-instance v11, Landroid/os/Bundle;

    .line 213
    .line 214
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    const/16 v13, 0xca

    .line 222
    .line 223
    invoke-interface {v12, v13}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 224
    .line 225
    .line 226
    move-result-wide v12

    .line 227
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    const/16 v15, 0x65

    .line 232
    .line 233
    invoke-interface {v14, v15}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v14

    .line 237
    const-string v4, "VIDEO_BITRATE"

    .line 238
    .line 239
    invoke-virtual {v11, v4, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 240
    .line 241
    .line 242
    const-string v4, "AUDIO_BITRATE"

    .line 243
    .line 244
    invoke-virtual {v11, v4, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 245
    .line 246
    .line 247
    const-string v4, "fps"

    .line 248
    .line 249
    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 250
    .line 251
    .line 252
    const-string v0, "dps"

    .line 253
    .line 254
    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 255
    .line 256
    .line 257
    const-string v0, "cachedBytes"

    .line 258
    .line 259
    invoke-virtual {v11, v0, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 260
    .line 261
    .line 262
    const-string v0, "bitRate"

    .line 263
    .line 264
    invoke-virtual {v11, v0, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 265
    .line 266
    .line 267
    const-string v0, "tcpSpeed"

    .line 268
    .line 269
    invoke-virtual {v11, v0, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 270
    .line 271
    .line 272
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-interface {v0, v11}, Lcom/tencent/liteav/txcplayer/d;->a(Landroid/os/Bundle;)V

    .line 277
    .line 278
    .line 279
    const/16 v0, 0x64

    .line 280
    .line 281
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    .line 283
    .line 284
    const-wide/16 v2, 0x1f4

    .line 285
    .line 286
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v3, "MSG_UPDATE_NET_STATUS exception : "

    .line 293
    .line 294
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    const-string v2, "TXCVodVideoView"

    .line 309
    .line 310
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_7
    :goto_3
    return-void

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
