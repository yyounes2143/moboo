.class public final Lcom/facebook/ads/redexgen/X/6e;
.super Lcom/facebook/ads/redexgen/X/DN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 0

    .line 18352
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 1

    .line 18353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6e;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RH;->A00(Lcom/facebook/ads/redexgen/X/RH;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPrepared()V

    .line 18354
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 18355
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6e;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method
