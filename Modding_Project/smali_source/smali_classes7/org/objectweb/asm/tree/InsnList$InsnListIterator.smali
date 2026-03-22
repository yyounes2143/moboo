.class final Lorg/objectweb/asm/tree/InsnList$InsnListIterator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/objectweb/asm/tree/InsnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InsnListIterator"
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/tree/InsnList;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gt p2, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-ge v0, p2, :cond_1

    .line 36
    .line 37
    iget-object p1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 43
    .line 44
    iget-object p1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 45
    .line 46
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 19
    .line 20
    move-object v2, p1

    .line 21
    check-cast v2, Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 28
    .line 29
    move-object v1, p1

    .line 30
    check-cast v1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    check-cast p1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 36
    .line 37
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 41
    .line 42
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 13
    .line 14
    iget-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 25
    .line 26
    iget v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 8
    .line 9
    iget-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwww()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwww:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 20
    .line 21
    iget v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 10
    .line 11
    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 15
    .line 16
    iget-object v1, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 17
    .line 18
    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    :goto_0
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    .line 6
    .line 7
    check-cast p1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 8
    .line 9
    invoke-virtual {v1, v0, p1}, Lorg/objectweb/asm/tree/InsnList;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
