.class public Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/FTXPIPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PipParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentPlayTime:F

.field private final mCurrentPlayerId:I

.field private final mIsNeedPlayBack:Z

.field private final mIsNeedPlayControl:Z

.field private final mIsNeedPlayForward:Z

.field private mIsPlaying:Z

.field private final mPlayBackAssetPath:Ljava/lang/String;

.field private final mPlayForwardAssetPath:Ljava/lang/String;

.field private final mPlayPauseAssetPath:Ljava/lang/String;

.field private final mPlayResumeAssetPath:Ljava/lang/String;

.field private mViewHeight:I

.field private mViewWith:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsPlaying:Z

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayTime:F

    const/16 v1, 0x10

    .line 23
    iput v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewWith:I

    const/16 v1, 0x9

    .line 24
    iput v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewHeight:I

    .line 25
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mActionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayBackAssetPath:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayResumeAssetPath:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayPauseAssetPath:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayForwardAssetPath:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayerId:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayBack:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayForward:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayControl:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsPlaying:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayTime:F

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewWith:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->isBlankStr(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v8, v0, 0x1

    .line 2
    invoke-static {p4}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->isBlankStr(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 3
    invoke-static {p2}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->isBlankStr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p3}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->isBlankStr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move v10, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :goto_1
    invoke-direct/range {v2 .. v10}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsPlaying:Z

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayTime:F

    const/16 v0, 0x10

    .line 9
    iput v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewWith:I

    const/16 v0, 0x9

    .line 10
    iput v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewHeight:I

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mActionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayBackAssetPath:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayResumeAssetPath:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayPauseAssetPath:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayForwardAssetPath:Ljava/lang/String;

    .line 16
    iput p5, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayerId:I

    .line 17
    iput-boolean p6, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayBack:Z

    .line 18
    iput-boolean p7, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayForward:Z

    .line 19
    iput-boolean p8, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayControl:Z

    return-void
.end method

.method private getBackIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayBackAssetPath:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x1080025

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getIcon(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private getForwardIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayForwardAssetPath:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x1080022

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getIcon(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private getIcon(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p2

    .line 25
    const-string v0, "FTXPIPManager"

    .line 26
    .line 27
    const-string v1, "getIcon error"

    .line 28
    .line 29
    invoke-static {v0, v1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method private getPauseIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayPauseAssetPath:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x1080023

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getIcon(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private getPlayIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayResumeAssetPath:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0x1080024

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getIcon(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method


# virtual methods
.method public buildParams(Landroid/app/Activity;)Landroid/app/PictureInPictureParams;
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayBack:Z

    .line 7
    .line 8
    const/high16 v2, 0xa000000

    .line 9
    .line 10
    const-string v3, "vodPlayControl"

    .line 11
    .line 12
    const-string v4, "vodPlayerId"

    .line 13
    .line 14
    const-string v5, "vodPlayOp"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v6, 0x65

    .line 24
    .line 25
    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iget v7, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayerId:I

    .line 29
    .line 30
    invoke-virtual {v1, v4, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1, v6, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v6, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v7, p1, v6, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getBackIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v6, "skipPre"

    .line 68
    .line 69
    const-string v8, "skip pre"

    .line 70
    .line 71
    invoke-static {v1, v6, v8, v7}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/RemoteAction;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayControl:Z

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    new-instance v1, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    iget v6, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayerId:I

    .line 88
    .line 89
    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const/16 v6, 0x66

    .line 93
    .line 94
    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    new-instance v6, Landroid/content/Intent;

    .line 98
    .line 99
    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-boolean v6, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsPlaying:Z

    .line 115
    .line 116
    if-eqz v6, :cond_1

    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getPauseIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getPlayIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    :goto_0
    iget-object v7, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mActionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    invoke-static {p1, v7, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v7, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-static {v8, p1, v7, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 141
    .line 142
    .line 143
    const-string v1, "playOrPause"

    .line 144
    .line 145
    const-string v7, "play Or Pause"

    .line 146
    .line 147
    invoke-static {v6, v1, v7, v8}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/RemoteAction;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayForward:Z

    .line 155
    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    new-instance v1, Landroid/os/Bundle;

    .line 159
    .line 160
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 161
    .line 162
    .line 163
    const/16 v6, 0x67

    .line 164
    .line 165
    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    iget v5, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayerId:I

    .line 169
    .line 170
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    new-instance v4, Landroid/content/Intent;

    .line 174
    .line 175
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {p1, v6, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1, v6, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v3, p1, v6, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getForwardIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Icon;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string v1, "skipNext"

    .line 208
    .line 209
    const-string v2, "skip next"

    .line 210
    .line 211
    invoke-static {p1, v1, v2, v3}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/RemoteAction;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_3
    invoke-static {}, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/PictureInPictureParams$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/PictureInPictureParams$Builder;Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    .line 223
    .line 224
    .line 225
    new-instance v0, Landroid/util/Rational;

    .line 226
    .line 227
    iget v1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewWith:I

    .line 228
    .line 229
    iget v2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewHeight:I

    .line 230
    .line 231
    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 232
    .line 233
    .line 234
    invoke-static {p1, v0}, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 235
    .line 236
    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 238
    .line 239
    const/16 v1, 0x1f

    .line 240
    .line 241
    if-lt v0, v1, :cond_4

    .line 242
    .line 243
    const/4 v0, 0x0

    .line 244
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/PictureInPictureParams$Builder;Z)Landroid/app/PictureInPictureParams$Builder;

    .line 245
    .line 246
    .line 247
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/PictureInPictureParams$Builder;Z)Landroid/app/PictureInPictureParams$Builder;

    .line 248
    .line 249
    .line 250
    :cond_4
    invoke-static {p1}, Lcom/changdu/mobovideo/plugins/Wwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public geiRadioWith()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewWith:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentPlayTime()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayTime:F

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentPlayerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayerId:I

    .line 2
    .line 3
    return v0
.end method

.method public getRadioHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsPlaying:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCurrentPlayTime(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayTime:F

    .line 2
    .line 3
    return-void
.end method

.method public setIsPlaying(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsPlaying:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRadio(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewWith:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewHeight:I

    .line 4
    .line 5
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayBackAssetPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayResumeAssetPath:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayPauseAssetPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mPlayForwardAssetPath:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayerId:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayBack:Z

    .line 27
    .line 28
    int-to-byte p2, p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 30
    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayForward:Z

    .line 33
    .line 34
    int-to-byte p2, p2

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    .line 37
    .line 38
    iget-boolean p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsNeedPlayControl:Z

    .line 39
    .line 40
    int-to-byte p2, p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    .line 43
    .line 44
    iget-boolean p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mIsPlaying:Z

    .line 45
    .line 46
    int-to-byte p2, p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    .line 49
    .line 50
    iget p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mCurrentPlayTime:F

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 53
    .line 54
    .line 55
    iget p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewWith:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    iget p2, p0, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->mViewHeight:I

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
