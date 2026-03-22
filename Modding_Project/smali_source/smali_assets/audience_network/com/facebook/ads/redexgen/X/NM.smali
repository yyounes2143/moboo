.class public final Lcom/facebook/ads/redexgen/X/NM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NI;->A0Z(Lcom/facebook/ads/redexgen/X/R0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/R0;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1399
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YUGwJzzikBNzfLIllCMdkir2Jyj8DuFq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ntVfVONdyCctXWp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AonpNDk7AlTTh7WnvPqW51ITIbVwFUJp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NJZ9S98WzFijxyBcJxql7T6JOIFmEfw7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8QFO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nOxceDp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zcnAPzBVA2CXXQsDQKs94da1Vf1b77Qu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "s6TvhQwfXdUE9Ss2QaqLkXkKVbAwWXrL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NM;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NI;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54004
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NM;->A00:Lcom/facebook/ads/redexgen/X/R0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACC(Lcom/facebook/ads/redexgen/X/Xm;)V
    .locals 4

    .line 54005
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 54006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:Lcom/facebook/ads/redexgen/X/NI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NI;->A0W()V

    .line 54007
    :goto_0
    return-void

    .line 54008
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NI;->A0D:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A07:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 54009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:Lcom/facebook/ads/redexgen/X/NI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NI;->A0e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54010
    return-void

    .line 54011
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:Lcom/facebook/ads/redexgen/X/NI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/NM;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/NM;->A02:[Ljava/lang/String;

    const-string v1, "pLKL5MIsKfCUMWoMxvxDNCAoAO8BGlnS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7PsgTAKpTeXTqL7VuWAjeXRdKL6HZN4L"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NI;->A0b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NM;->A00:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A0a(Lcom/facebook/ads/redexgen/X/R0;)V

    goto :goto_0

    .line 54013
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NM;->A00:Lcom/facebook/ads/redexgen/X/R0;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    goto :goto_0
.end method
