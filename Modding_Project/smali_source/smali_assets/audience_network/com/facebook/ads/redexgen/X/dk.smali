.class public final Lcom/facebook/ads/redexgen/X/dk;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SA;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SB;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/SF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SA;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 0

    .line 79641
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dk;->A00:Lcom/facebook/ads/redexgen/X/SA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dk;->A02:Lcom/facebook/ads/redexgen/X/SF;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 79642
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dk;->A00:Lcom/facebook/ads/redexgen/X/SA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dk;->A01:Lcom/facebook/ads/redexgen/X/SB;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SA;->A02(Lcom/facebook/ads/redexgen/X/SA;Lcom/facebook/ads/redexgen/X/SB;)V

    .line 79643
    return-void
.end method
