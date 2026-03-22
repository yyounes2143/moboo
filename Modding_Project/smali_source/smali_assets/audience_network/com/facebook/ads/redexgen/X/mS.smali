.class public abstract Lcom/facebook/ads/redexgen/X/mS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CL;


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Looper;

.field public A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public A02:Lcom/facebook/ads/redexgen/X/7m;

.field public final A03:Lcom/facebook/ads/redexgen/X/9P;

.field public final A04:Lcom/facebook/ads/redexgen/X/CW;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/CK;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/ads/redexgen/X/CK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3154
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KBisateWM8YQ4arKDgRYpdTDxezzMkCv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VJ2uSooodcJBZOLyoDYKaqw5tYDrMz4W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bemaZsDF2tY6J54Bg3tOUH55klLpC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LnVxhCvG0lD6F7ZPu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7ofy39p1yDzqV7NnIWFVVnn8VzEJdml2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3pklWVRHTZe0TjeZrFE3TnxhkITdP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TfKHOeXRiNIOMg3PDS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WMeybOD3P6lu5fyh7Idh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mS;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98739
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A05:Ljava/util/ArrayList;

    .line 98740
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    .line 98741
    new-instance v0, Lcom/facebook/ads/redexgen/X/CW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A04:Lcom/facebook/ads/redexgen/X/CW;

    .line 98742
    new-instance v0, Lcom/facebook/ads/redexgen/X/9P;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A03:Lcom/facebook/ads/redexgen/X/9P;

    .line 98743
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/7m;
    .locals 1

    .line 98744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A02:Lcom/facebook/ads/redexgen/X/7m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7m;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/9P;
    .locals 2

    .line 98745
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mS;->A03:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/9P;->A00(ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/CW;
    .locals 4

    .line 98746
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mS;->A04:Lcom/facebook/ads/redexgen/X/CW;

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/CW;->A02(ILcom/facebook/ads/redexgen/X/mL;J)Lcom/facebook/ads/redexgen/X/CW;

    move-result-object v0

    return-object v0
.end method

.method public A03()V
    .locals 0

    .line 98747
    return-void
.end method

.method public A04()V
    .locals 0

    .line 98748
    return-void
.end method

.method public final A05(Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 2

    .line 98749
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mS;->A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 98750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CK;

    .line 98751
    .local v1, "caller":Lcom/facebook/ads/redexgen/X/CK;
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/CK;->AFI(Lcom/facebook/ads/redexgen/X/CL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 98752
    .end local v1    # "caller":Lcom/facebook/ads/redexgen/X/CK;
    goto :goto_0

    .line 98753
    :cond_0
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/CK;)V
    .locals 2

    .line 98754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 98755
    .local v0, "wasEnabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 98756
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98757
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mS;->A03()V

    .line 98758
    :cond_0
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/CK;)V
    .locals 2

    .line 98759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A00:Landroid/os/Looper;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 98761
    .local v0, "wasDisabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98762
    if-eqz v1, :cond_0

    .line 98763
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mS;->A04()V

    .line 98764
    :cond_0
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/CK;Lcom/facebook/ads/redexgen/X/5H;Lcom/facebook/ads/redexgen/X/7m;)V
    .locals 3

    .line 98765
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 98766
    .local v0, "looper":Landroid/os/Looper;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A00:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A00:Landroid/os/Looper;

    if-ne v0, v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 98767
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/mS;->A02:Lcom/facebook/ads/redexgen/X/7m;

    .line 98768
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mS;->A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 98769
    .local v1, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A00:Landroid/os/Looper;

    if-nez v0, :cond_2

    .line 98771
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/mS;->A00:Landroid/os/Looper;

    .line 98772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98773
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/mS;->A0A(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 98774
    :cond_1
    :goto_1
    return-void

    .line 98775
    :cond_2
    if-eqz v1, :cond_1

    .line 98776
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/mS;->A07(Lcom/facebook/ads/redexgen/X/CK;)V

    .line 98777
    invoke-interface {p1, p0, v1}, Lcom/facebook/ads/redexgen/X/CK;->AFI(Lcom/facebook/ads/redexgen/X/CL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    goto :goto_1

    .line 98778
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract A09()V
.end method

.method public abstract A0A(Lcom/facebook/ads/redexgen/X/5H;)V
.end method

.method public final A3r(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/CX;)V
    .locals 1

    .line 98779
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98780
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A04:Lcom/facebook/ads/redexgen/X/CW;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CW;->A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/CX;)V

    .line 98782
    return-void
.end method

.method public final AGN(Lcom/facebook/ads/redexgen/X/CK;Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 1

    .line 98783
    sget-object v0, Lcom/facebook/ads/redexgen/X/7m;->A03:Lcom/facebook/ads/redexgen/X/7m;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/mS;->A08(Lcom/facebook/ads/redexgen/X/CK;Lcom/facebook/ads/redexgen/X/5H;Lcom/facebook/ads/redexgen/X/7m;)V

    .line 98784
    return-void
.end method

.method public final AH1(Lcom/facebook/ads/redexgen/X/CK;)V
    .locals 3

    .line 98785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A00:Landroid/os/Looper;

    .line 98788
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A01:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 98789
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A02:Lcom/facebook/ads/redexgen/X/7m;

    .line 98790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A06:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/mS;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 98791
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/mS;->A06(Lcom/facebook/ads/redexgen/X/CK;)V

    goto :goto_0

    .line 98792
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/mS;->A07:[Ljava/lang/String;

    const-string v1, "pnZ7WVnnf2PAl7J7h"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ddcJoNElLz9Uvwup8w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mS;->A09()V

    .line 98793
    :goto_0
    return-void
.end method

.method public final AHi(Lcom/facebook/ads/redexgen/X/CX;)V
    .locals 1

    .line 98794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mS;->A04:Lcom/facebook/ads/redexgen/X/CW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/CW;->A0D(Lcom/facebook/ads/redexgen/X/CX;)V

    .line 98795
    return-void
.end method
