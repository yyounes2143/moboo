.class public Lorg/objectweb/asm/tree/analysis/SourceValue;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/objectweb/asm/tree/analysis/Value;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    .line 8
    .line 9
    iget v0, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    iget v2, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
