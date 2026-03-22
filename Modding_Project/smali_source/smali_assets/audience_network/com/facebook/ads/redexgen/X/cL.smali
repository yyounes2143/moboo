.class public final Lcom/facebook/ads/redexgen/X/cL;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4K;->A0p(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;

.field public final synthetic A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2565
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XPcb7u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1EqmHb2eknRLZguZZ09OTS3RJ6PZDacc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "q716qXT4J9ut1OK6cu8TQ8z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ll75T4DF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "819G9oTFaahwgvqYm0vS8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2zY5AuZMZiedj3zrg1jXmGR85zyyFWFf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4jbusEaCntQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MMYtKoyK6XiZYZ9RjQwnamveqLTwrKqj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;Z)V
    .locals 0

    .line 77868
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/cL;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 77869
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 77870
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0v(Lcom/facebook/ads/redexgen/X/4K;)Z

    move-result v1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0j(Lcom/facebook/ads/redexgen/X/4K;ZZ)V

    .line 77871
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A01:Z

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/4K;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4K;->A0C(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0C(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->destroy()V

    .line 77873
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
