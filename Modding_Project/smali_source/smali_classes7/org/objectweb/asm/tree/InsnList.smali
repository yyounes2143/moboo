.class public Lorg/objectweb/asm/tree/InsnList;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/objectweb/asm/tree/InsnList$InsnListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/objectweb/asm/tree/AbstractInsnNode;",
        ">;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:I


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
.method public Wwwwwwwwwwwwwwwwwwwwwwww()[Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    iget v1, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    new-array v1, v1, [Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_0

    .line 9
    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    add-int/lit8 v3, v2, 0x1

    .line 13
    .line 14
    iput v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 17
    .line 18
    move v2, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 11
    .line 12
    :goto_0
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 13
    .line 14
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 22
    .line 23
    :goto_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    aput-object p2, v0, v1

    .line 30
    .line 31
    iput v1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 36
    .line 37
    :goto_2
    const/4 p2, -0x1

    .line 38
    iput p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 42
    .line 43
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 44
    .line 45
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    iget-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 17
    .line 18
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v2, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 22
    .line 23
    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-nez v1, :cond_2

    .line 27
    .line 28
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 29
    .line 30
    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 34
    .line 35
    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 36
    .line 37
    :goto_0
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 41
    .line 42
    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 43
    .line 44
    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 45
    .line 46
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;-><init>(Lorg/objectweb/asm/tree/InsnList;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/util/ListIterator;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 15
    .line 16
    :goto_0
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 17
    .line 18
    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 15
    .line 16
    :goto_0
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 17
    .line 18
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 10
    .line 11
    :cond_0
    iget p1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 17
    .line 18
    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    :goto_0
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ListIterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method
