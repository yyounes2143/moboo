.class final Lorg/objectweb/asm/tree/analysis/SmallSet;
.super Ljava/util/AbstractSet;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/objectweb/asm/tree/analysis/SmallSet$IteratorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/objectweb/asm/tree/analysis/SmallSet$IteratorImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/analysis/SmallSet$IteratorImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SmallSet;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_1
    const/4 v0, 0x2

    .line 14
    return v0
.end method
