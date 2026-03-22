.class public final Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/ClickCoordinateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickCoordinate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\u0006\u0010\u0014\u001a\u00020\u0010J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;",
        "",
        "downCoordinate",
        "Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;",
        "upCoordinate",
        "(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V",
        "getDownCoordinate",
        "()Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;",
        "setDownCoordinate",
        "(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V",
        "getUpCoordinate",
        "setUpCoordinate",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "ready",
        "toString",
        "",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;ILjava/lang/Object;)Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->copy(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;-><init>(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getDownCoordinate()Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpCoordinate()Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final ready()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;->getX()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;->getY()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;->getX()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;->getY()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public final setDownCoordinate(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    return-void
.end method

.method public final setUpCoordinate(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ClickCoordinate(downCoordinate="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->downCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", upCoordinate="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;->upCoordinate:Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
