.class final Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/objectweb/asm/commons/SerialVersionUIDAdder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;",
        ">;"
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/objectweb/asm/commons/SerialVersionUIDAdder$Item;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method
