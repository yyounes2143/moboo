.class public final Lcom/facebook/ads/redexgen/X/4G;
.super Lcom/facebook/ads/redexgen/X/DN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0

    .line 12154
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 2

    .line 12155
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Lcom/facebook/ads/redexgen/X/3r;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3r;->A0X(Lcom/facebook/ads/redexgen/X/3r;Z)Z

    .line 12156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A07(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ae;->A1I(Lcom/facebook/ads/redexgen/X/DO;)V

    .line 12157
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 12158
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4G;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method
