.class public interface abstract Lcom/facebook/ads/redexgen/X/8d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioTrackBufferSizeProvider"
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/8d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 484
    new-instance v0, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8o;-><init>()V

    .line 485
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A06()Lcom/facebook/ads/redexgen/X/mv;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8d;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 486
    return-void
.end method


# virtual methods
.method public abstract A6x(IIIIIID)I
.end method
