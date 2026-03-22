.class public final Lcom/facebook/ads/redexgen/X/RR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeBannerImageLoadTaskParams"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62747
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RR;->A01:Ljava/lang/String;

    .line 62748
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Ljava/lang/String;

    .line 62749
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fZ;)V
    .locals 0

    .line 62750
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RR;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
