.class Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;
.super Ljava/util/AbstractMap;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/objectweb/asm/commons/JSRInlinerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Instantiation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lorg/objectweb/asm/tree/LabelNode;",
        "Lorg/objectweb/asm/tree/LabelNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/BitSet;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lorg/objectweb/asm/tree/LabelNode;

    .line 20
    .line 21
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/objectweb/asm/tree/LabelNode;
    .locals 0

    .line 1
    check-cast p1, Lorg/objectweb/asm/tree/LabelNode;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/BitSet;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    .line 23
    .line 24
    move-object v1, p0

    .line 25
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v2, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/BitSet;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    :cond_2
    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/objectweb/asm/tree/LabelNode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
