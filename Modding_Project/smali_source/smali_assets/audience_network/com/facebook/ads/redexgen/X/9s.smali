.class public final Lcom/facebook/ads/redexgen/X/9s;
.super Lcom/facebook/ads/redexgen/X/oU;
.source ""


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/9s;",
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

    .line 581
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9s;->A04:Ljava/lang/String;

    .line 582
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/String;

    .line 583
    new-instance v0, Lcom/facebook/ads/redexgen/X/op;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/op;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9s;->A02:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28661
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A01:Z

    .line 28663
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Z

    .line 28664
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 28665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A01:Z

    .line 28667
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Z

    .line 28668
    return-void
.end method

.method public static A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9s;
    .locals 2

    .line 28669
    sget-object v1, Lcom/facebook/ads/redexgen/X/oU;->A02:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 28670
    sget-object v0, Lcom/facebook/ads/redexgen/X/9s;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 28671
    .local v0, "isRated":Z
    if-eqz v0, :cond_0

    .line 28672
    sget-object v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9s;-><init>(Z)V

    .line 28673
    :goto_1
    return-object v0

    .line 28674
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9s;-><init>()V

    goto :goto_1

    .line 28675
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9s;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9s;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 28676
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9s;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 28677
    return v2

    .line 28678
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/9s;

    .line 28679
    .local v0, "other":Lcom/facebook/ads/redexgen/X/9s;
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9s;->A00:Z

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9s;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9s;->A01:Z

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 28680
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A01:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Z

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
