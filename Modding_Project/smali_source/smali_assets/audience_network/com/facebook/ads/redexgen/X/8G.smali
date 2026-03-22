.class public final Lcom/facebook/ads/redexgen/X/8G;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationException"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/or;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/or;)V
    .locals 0

    .line 22815
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22816
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8G;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 22817
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;)V
    .locals 0

    .line 22818
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22819
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8G;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 22820
    return-void
.end method
