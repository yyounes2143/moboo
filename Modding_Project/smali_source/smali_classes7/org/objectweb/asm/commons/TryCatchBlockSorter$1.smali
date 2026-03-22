.class Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/objectweb/asm/tree/TryCatchBlockNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/TryCatchBlockSorter;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/TryCatchBlockNode;Lorg/objectweb/asm/tree/TryCatchBlockNode;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/TryCatchBlockNode;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/TryCatchBlockNode;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sub-int/2addr p1, p2

    .line 10
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/TryCatchBlockNode;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/TryCatchBlockSorter;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 4
    .line 5
    iget-object v1, p1, Lorg/objectweb/asm/tree/TryCatchBlockNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/LabelNode;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/commons/TryCatchBlockSorter;

    .line 12
    .line 13
    iget-object v1, v1, Lorg/objectweb/asm/tree/MethodNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/objectweb/asm/tree/TryCatchBlockNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/LabelNode;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sub-int/2addr p1, v0

    .line 22
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    .line 2
    .line 3
    check-cast p2, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/TryCatchBlockNode;Lorg/objectweb/asm/tree/TryCatchBlockNode;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
