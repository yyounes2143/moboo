.class final Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$ITPPropertyHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


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


# virtual methods
.method public final bridge synthetic getPropertyValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$10;->getPropertyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyValue()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getAbUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic setPropertyValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$10;->setPropertyValue(Ljava/lang/String;)V

    return-void
.end method

.method public final setPropertyValue(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->setAbUserId(Ljava/lang/String;)V

    return-void
.end method
