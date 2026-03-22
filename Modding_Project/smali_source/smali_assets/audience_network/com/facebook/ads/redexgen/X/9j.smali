.class public final Lcom/facebook/ads/redexgen/X/9j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/5H;

.field public A03:Lcom/facebook/ads/redexgen/X/jB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/jB<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/5C;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28406
    new-instance v0, Lcom/facebook/ads/redexgen/X/5C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5C;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:Lcom/facebook/ads/redexgen/X/5C;

    .line 28407
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A00:I

    .line 28408
    iput v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A01:I

    .line 28409
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/5H;)Lcom/facebook/ads/redexgen/X/9j;
    .locals 0

    .line 28410
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9j;->A02:Lcom/facebook/ads/redexgen/X/5H;

    .line 28411
    return-object p0
.end method

.method public final A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9j;
    .locals 0

    .line 28412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:Ljava/lang/String;

    .line 28413
    return-object p0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/18;
    .locals 10

    .line 28414
    new-instance v1, Lcom/facebook/ads/redexgen/X/18;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9j;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9j;->A01:I

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/9j;->A05:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:Lcom/facebook/ads/redexgen/X/5C;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9j;->A03:Lcom/facebook/ads/redexgen/X/jB;

    iget-boolean v8, p0, Lcom/facebook/ads/redexgen/X/9j;->A06:Z

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/18;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5C;Lcom/facebook/ads/redexgen/X/jB;ZLcom/facebook/ads/redexgen/X/57;)V

    .line 28415
    .local v0, "dataSource":Lcom/facebook/ads/redexgen/X/18;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A02:Lcom/facebook/ads/redexgen/X/5H;

    if-eqz v0, :cond_0

    .line 28416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A02:Lcom/facebook/ads/redexgen/X/5H;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 28417
    :cond_0
    return-object v1
.end method

.method public final bridge synthetic A5A()Lcom/facebook/ads/redexgen/X/nl;
    .locals 1

    .line 28418
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9j;->A02()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    return-object v0
.end method
