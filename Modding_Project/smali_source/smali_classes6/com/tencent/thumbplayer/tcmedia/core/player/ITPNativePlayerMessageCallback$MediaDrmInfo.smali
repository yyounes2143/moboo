.class public Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerMessageCallback$MediaDrmInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDrmInfo"
.end annotation


# instance fields
.field public componentName:Ljava/lang/String;

.field public drmType:I

.field public supportSecureDecoder:Z

.field public supportSecureDecrypt:Z


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
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerMessageCallback$MediaDrmInfo;->supportSecureDecoder:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerMessageCallback$MediaDrmInfo;->supportSecureDecrypt:Z

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerMessageCallback$MediaDrmInfo;->drmType:I

    .line 11
    .line 12
    return-void
.end method
