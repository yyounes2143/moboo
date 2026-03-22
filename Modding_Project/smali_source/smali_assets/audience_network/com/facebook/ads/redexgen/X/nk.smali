.class public final Lcom/facebook/ads/redexgen/X/nk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4w;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/4w;

.field public final A02:Lcom/facebook/ads/redexgen/X/5H;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5H;Lcom/facebook/ads/redexgen/X/4w;)V
    .locals 1

    .line 101059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101060
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nk;->A00:Landroid/content/Context;

    .line 101061
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nk;->A02:Lcom/facebook/ads/redexgen/X/5H;

    .line 101062
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/nk;->A01:Lcom/facebook/ads/redexgen/X/4w;

    .line 101063
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 1

    .line 101064
    new-instance v0, Lcom/facebook/ads/redexgen/X/9j;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9j;-><init>()V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/9j;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9j;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/nk;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5H;Lcom/facebook/ads/redexgen/X/4w;)V

    .line 101065
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/9k;
    .locals 3

    .line 101066
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nk;->A00:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nk;->A01:Lcom/facebook/ads/redexgen/X/4w;

    .line 101067
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4w;->A5A()Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/9k;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9k;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/nl;)V

    .line 101068
    .local v0, "dataSource":Lcom/facebook/ads/redexgen/X/9k;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nk;->A02:Lcom/facebook/ads/redexgen/X/5H;

    if-eqz v0, :cond_0

    .line 101069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nk;->A02:Lcom/facebook/ads/redexgen/X/5H;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9k;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 101070
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic A5A()Lcom/facebook/ads/redexgen/X/nl;
    .locals 1

    .line 101071
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nk;->A00()Lcom/facebook/ads/redexgen/X/9k;

    move-result-object v0

    return-object v0
.end method
