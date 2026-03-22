.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntPlayerMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg$Builder;
    }
.end annotation


# instance fields
.field private playerId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private value:Ljava/lang/Long;
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

.method public static fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
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
            "Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;-><init>()V

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
    check-cast v1, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->setValue(Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
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
    const-class v3, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->playerId:Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->playerId:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->value:Ljava/lang/Long;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->value:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public getPlayerId()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->value:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->value:Ljava/lang/Long;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object v1, v2, v0

    .line 13
    .line 14
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public setPlayerId(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->value:Ljava/lang/Long;

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
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->playerId:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->value:Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
