.class public final Lcom/facebook/ads/redexgen/X/nh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5H;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/17;
    .locals 2

    .line 101050
    new-instance v1, Lcom/facebook/ads/redexgen/X/17;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/17;-><init>()V

    .line 101051
    .local v0, "dataSource":Lcom/facebook/ads/redexgen/X/17;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A00:Lcom/facebook/ads/redexgen/X/5H;

    if-eqz v0, :cond_0

    .line 101052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nh;->A00:Lcom/facebook/ads/redexgen/X/5H;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 101053
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic A5A()Lcom/facebook/ads/redexgen/X/nl;
    .locals 1

    .line 101054
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nh;->A00()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    return-object v0
.end method
