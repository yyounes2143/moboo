.class public Lorg/objectweb/asm/tree/MethodNode;
.super Lorg/objectweb/asm/MethodVisitor;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, 0x90000

    .line 1
    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/MethodNode;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/tree/MethodNode;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    .line 5
    new-instance p1, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/tree/InsnList;

    return-void
.end method
