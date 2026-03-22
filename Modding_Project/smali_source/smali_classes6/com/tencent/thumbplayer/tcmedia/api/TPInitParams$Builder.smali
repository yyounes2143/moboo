.class public Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mGuid:Ljava/lang/String;

.field private mPlatform:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mGuid:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mPlatform:I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mDeviceName:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;-><init>(Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$1;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mPlatform:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;->access$102(Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;I)I

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mGuid:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;->access$202(Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mDeviceName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;->access$302(Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mDeviceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mGuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlatform(I)Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPInitParams$Builder;->mPlatform:I

    .line 2
    .line 3
    return-object p0
.end method
