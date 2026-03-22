.class public Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaRequestExtraInfo;
.super Ljava/lang/Object;


# static fields
.field public static final TP_RICH_MEDIA_ACT_ON_OPTION_ACCOMPANY_AUDIO_CALLBACK:I = 0x2

.field public static final TP_RICH_MEDIA_ACT_ON_OPTION_ACCOMPANY_VIDEO_CALLBACK:I = 0x1

.field public static final TP_RICH_MEDIA_ACT_ON_OPTION_DIRECT_CALLBACK:I


# instance fields
.field private mActOnOption:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaRequestExtraInfo;->mActOnOption:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getActOnOption()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaRequestExtraInfo;->mActOnOption:I

    .line 2
    .line 3
    return v0
.end method

.method public setActOnOption(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaRequestExtraInfo;->mActOnOption:I

    .line 2
    .line 3
    return-void
.end method
