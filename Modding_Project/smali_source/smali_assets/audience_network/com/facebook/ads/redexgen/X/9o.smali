.class public final Lcom/facebook/ads/redexgen/X/9o;
.super Lcom/facebook/ads/redexgen/X/oU;
.source ""


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/9o;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Z

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 570
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9o;->A04:Ljava/lang/String;

    .line 571
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9o;->A03:Ljava/lang/String;

    .line 572
    new-instance v0, Lcom/facebook/ads/redexgen/X/oS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28595
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Z

    .line 28597
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Z

    .line 28598
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 28599
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Z

    .line 28601
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Z

    .line 28602
    return-void
.end method

.method public static A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9o;
    .locals 3

    .line 28603
    sget-object v1, Lcom/facebook/ads/redexgen/X/oU;->A02:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 28604
    sget-object v0, Lcom/facebook/ads/redexgen/X/9o;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 28605
    .local v0, "rated":Z
    if-eqz v0, :cond_0

    .line 28606
    sget-object v0, Lcom/facebook/ads/redexgen/X/9o;->A03:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9o;-><init>(Z)V

    .line 28607
    :goto_1
    return-object v0

    .line 28608
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9o;-><init>()V

    goto :goto_1

    .line 28609
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9o;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9o;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 28610
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9o;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 28611
    return v2

    .line 28612
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/9o;

    .line 28613
    .local v0, "other":Lcom/facebook/ads/redexgen/X/9o;
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9o;->A00:Z

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9o;->A01:Z

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 28614
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v1, v0

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BX;->A00([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
