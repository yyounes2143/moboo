.class public Lorg/objectweb/asm/tree/analysis/SimpleVerifier;
.super Lorg/objectweb/asm/tree/analysis/BasicVerifier;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ClassLoader;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/Type;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Z)V

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/objectweb/asm/Type;",
            "Lorg/objectweb/asm/Type;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Type;",
            ">;Z)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;-><init>(I)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ClassLoader;

    .line 8
    iput-object p2, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/Type;

    .line 9
    iput-object p3, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/Type;

    .line 10
    iput-object p4, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 11
    iput-boolean p5, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/Type;",
            "Lorg/objectweb/asm/Type;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Type;",
            ">;Z)V"
        }
    .end annotation

    const/high16 v1, 0x90000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;

    if-ne p1, p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V

    return-void
.end method
