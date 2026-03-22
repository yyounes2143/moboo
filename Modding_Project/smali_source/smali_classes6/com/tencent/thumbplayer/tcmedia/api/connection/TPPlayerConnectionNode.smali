.class public Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionNode;
.super Ljava/lang/Object;


# instance fields
.field private nativeNode:Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionNode;->nativeNode:Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addAction(I)Z
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionConstant$Action;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionNode;->nativeNode:Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;

    .line 2
    .line 3
    const-class v1, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapConnectionAction;

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;->addAction(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getNativeNode()Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionNode;->nativeNode:Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public removeAction(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionConstant$Action;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionNode;->nativeNode:Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;

    .line 2
    .line 3
    const-class v1, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapConnectionAction;

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;->removeAction(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setLongActionConfig(IIJ)Z
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionConstant$Action;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/connection/TPPlayerConnectionNode;->nativeNode:Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;

    .line 2
    .line 3
    const-class v1, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapConnectionAction;

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-class v1, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapConnectionConfig;

    .line 10
    .line 11
    invoke-static {v1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/core/connection/TPNativePlayerConnectionNode;->setLongActionConfig(IIJ)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method
