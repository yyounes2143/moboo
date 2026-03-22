.class public interface abstract Lcom/facebook/ads/redexgen/X/AM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/AM;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 593
    new-instance v0, Lcom/facebook/ads/redexgen/X/mo;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mo;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/redexgen/X/AM;

    return-void
.end method
