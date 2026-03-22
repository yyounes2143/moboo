.class public final Lcom/facebook/ads/redexgen/X/6x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A0E:Lcom/facebook/ads/redexgen/X/mL;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public final A04:Lcom/facebook/ads/redexgen/X/mL;

.field public final A05:Lcom/facebook/ads/redexgen/X/mL;

.field public final A06:Lcom/facebook/ads/redexgen/X/mA;

.field public final A07:Lcom/facebook/ads/redexgen/X/EL;

.field public final A08:Lcom/facebook/ads/redexgen/X/hX;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "Start Stall Logging"
    .end annotation
.end field

.field public final A09:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "Determine if stall is from Audio for logging"
    .end annotation
.end field

.field public final A0A:Z

.field public volatile A0B:J

.field public volatile A0C:J

.field public volatile A0D:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 417
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mL;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6x;->A0E:Lcom/facebook/ads/redexgen/X/mL;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/androidx/media3/common/Timeline;JLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide v12, v3

    move-wide v14, v3

    move-wide/from16 v16, v3

    .line 20731
    sget-object v2, Lcom/facebook/ads/redexgen/X/6x;->A0E:Lcom/facebook/ads/redexgen/X/mL;

    sget-object v11, Lcom/facebook/ads/redexgen/X/6x;->A0E:Lcom/facebook/ads/redexgen/X/mL;

    sget-object v18, Lcom/facebook/ads/redexgen/X/hX;->A09:Lcom/facebook/ads/redexgen/X/hX;

    const/16 v19, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v10, p5

    move-object/from16 v9, p4

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v19}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20732
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJ)V
    .locals 20
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Customized to call base constructor"
    .end annotation

    move-object/from16 v0, p0

    .line 20733
    sget-object v18, Lcom/facebook/ads/redexgen/X/hX;->A09:Lcom/facebook/ads/redexgen/X/hX;

    const/16 v19, 0x0

    move-wide/from16 v16, p16

    move-object/from16 v11, p11

    move-object/from16 v10, p10

    move-object/from16 v9, p9

    move/from16 v8, p8

    move-wide/from16 v5, p5

    move-wide/from16 v14, p14

    move-wide/from16 v3, p3

    move/from16 v7, p7

    move-object/from16 v2, p2

    move-wide/from16 v12, p12

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v19}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20734
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V
    .locals 3
    .param p1    # Lcom/facebook/ads/androidx/media3/common/Timeline;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/mL;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Customized to add new parameters"
    .end annotation

    .line 20735
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20736
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 20737
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    .line 20738
    iput-wide p3, v0, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    .line 20739
    iput-wide p5, v0, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    .line 20740
    iput-wide p3, v0, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    .line 20741
    iput p7, v0, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    .line 20742
    iput-boolean p8, v0, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    .line 20743
    iput-object p9, v0, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    .line 20744
    iput-object p10, v0, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    .line 20745
    iput-object p11, v0, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    .line 20746
    iput-wide p12, v0, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    .line 20747
    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    .line 20748
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    .line 20749
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/6x;->A08:Lcom/facebook/ads/redexgen/X/hX;

    .line 20750
    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/6x;->A09:Z

    .line 20751
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6x;)V
    .locals 2

    .line 20752
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    .line 20753
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    .line 20754
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    .line 20755
    return-void
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/6x;
    .locals 37

    move-object/from16 v11, p0

    .line 20756
    new-instance v10, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-object/from16 v36, v0

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    move-object/from16 v19, v0

    iget-wide v6, v11, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    iget-wide v4, v11, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget-boolean v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    move/from16 v18, v0

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    move-object/from16 v17, v0

    iget-object v15, v11, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v14, v11, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v8, v11, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-object/from16 v16, v10

    iget-wide v2, v11, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iget-wide v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    iget-object v13, v11, Lcom/facebook/ads/redexgen/X/6x;->A08:Lcom/facebook/ads/redexgen/X/hX;

    iget-boolean v12, v11, Lcom/facebook/ads/redexgen/X/6x;->A09:Z

    move/from16 v23, p1

    move-wide/from16 v30, v2

    move-wide/from16 v32, v0

    move-object/from16 v34, v13

    move/from16 v35, v12

    move/from16 v24, v18

    move-object/from16 v25, v17

    move-object/from16 v26, v15

    move-object/from16 v27, v14

    move-wide/from16 v28, v8

    move-object/from16 v18, v19

    move-wide/from16 v19, v6

    move-wide/from16 v21, v4

    move-object/from16 v17, v36

    invoke-direct/range {v16 .. v35}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20757
    .local v1, "playbackInfo":Lcom/facebook/ads/redexgen/X/6x;
    invoke-static {v11, v10}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6x;)V

    .line 20758
    return-object v10
.end method

.method public final A02(ILcom/facebook/ads/redexgen/X/hX;Z)Lcom/facebook/ads/redexgen/X/6x;
    .locals 37
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Stall Reason Logging in Hero"
    .end annotation

    move-object/from16 v13, p0

    .line 20759
    new-instance v12, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-object/from16 v36, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    move-object/from16 v17, v0

    iget-wide v9, v13, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    iget-wide v7, v13, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget-boolean v15, v13, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    iget-object v14, v13, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    iget-object v11, v13, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v6, v13, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v4, v13, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-object/from16 v16, v12

    iget-wide v2, v13, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    move/from16 v23, p1

    move-wide/from16 v30, v2

    move-wide/from16 v32, v0

    move/from16 v35, p3

    move-object/from16 v34, p2

    move-object/from16 v26, v11

    move-object/from16 v27, v6

    move-wide/from16 v28, v4

    move/from16 v24, v15

    move-object/from16 v25, v14

    move-wide/from16 v21, v7

    move-object/from16 v18, v17

    move-wide/from16 v19, v9

    move-object/from16 v17, v36

    invoke-direct/range {v16 .. v35}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20760
    .local v1, "playbackInfo":Lcom/facebook/ads/redexgen/X/6x;
    invoke-static {v13, v12}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6x;)V

    .line 20761
    return-object v12
.end method

.method public final A03(IZ)Lcom/facebook/ads/redexgen/X/6x;
    .locals 36
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "To track Audio Stalls for Logging"
    .end annotation

    move-object/from16 v12, p0

    .line 20762
    new-instance v11, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    move-object/from16 v18, v0

    iget-wide v7, v12, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    iget-wide v5, v12, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    move/from16 v17, v0

    iget-object v15, v12, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    iget-object v14, v12, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v13, v12, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v9, v12, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-object/from16 v16, v11

    iget-wide v3, v12, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iget-wide v1, v12, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A08:Lcom/facebook/ads/redexgen/X/hX;

    move/from16 v23, p1

    move-wide/from16 v30, v3

    move-wide/from16 v32, v1

    move-object/from16 v34, v0

    move/from16 v35, p2

    move-object/from16 v25, v15

    move-object/from16 v26, v14

    move-object/from16 v27, v13

    move-wide/from16 v28, v9

    move-wide/from16 v21, v5

    move/from16 v24, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v18

    move-wide/from16 v19, v7

    invoke-direct/range {v16 .. v35}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20763
    .local v1, "playbackInfo":Lcom/facebook/ads/redexgen/X/6x;
    invoke-static {v12, v11}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6x;)V

    .line 20764
    return-object v11
.end method

.method public final A04(Lcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/6x;
    .locals 36

    move-object/from16 v11, p0

    .line 20765
    new-instance v10, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    move-object/from16 v20, v0

    iget-wide v4, v11, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    iget-wide v2, v11, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    move/from16 v23, v0

    iget-boolean v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    move/from16 v19, v0

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    move-object/from16 v18, v0

    iget-object v15, v11, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v14, v11, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v8, v11, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-object/from16 v16, v10

    iget-wide v6, v11, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iget-wide v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    iget-object v13, v11, Lcom/facebook/ads/redexgen/X/6x;->A08:Lcom/facebook/ads/redexgen/X/hX;

    iget-boolean v12, v11, Lcom/facebook/ads/redexgen/X/6x;->A09:Z

    move-object/from16 v17, p1

    move-wide/from16 v30, v6

    move-wide/from16 v32, v0

    move-object/from16 v34, v13

    move/from16 v35, v12

    move/from16 v24, v19

    move-object/from16 v25, v18

    move-object/from16 v26, v15

    move-object/from16 v27, v14

    move-wide/from16 v28, v8

    move-object/from16 v18, v20

    move-wide/from16 v19, v4

    move-wide/from16 v21, v2

    move/from16 v23, v23

    invoke-direct/range {v16 .. v35}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20766
    .local v1, "playbackInfo":Lcom/facebook/ads/redexgen/X/6x;
    invoke-static {v11, v10}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6x;)V

    .line 20767
    return-object v10
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/6x;
    .locals 37

    move-object/from16 v13, p0

    .line 20768
    new-instance v16, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-object/from16 v36, v0

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    move-object/from16 v17, v0

    iget-wide v9, v13, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    iget-wide v7, v13, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget v15, v13, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    iget-boolean v14, v13, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    iget-object v12, v13, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    iget-object v11, v13, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    iget-wide v5, v13, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-object/from16 v16, v16

    iget-wide v3, v13, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iget-wide v1, v13, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/6x;->A08:Lcom/facebook/ads/redexgen/X/hX;

    iget-boolean v13, v13, Lcom/facebook/ads/redexgen/X/6x;->A09:Z

    move-object/from16 v27, p1

    move-wide/from16 v30, v3

    move-wide/from16 v32, v1

    move-object/from16 v34, v0

    move/from16 v35, v13

    move-object/from16 v26, v11

    move-wide/from16 v28, v5

    move/from16 v23, v15

    move/from16 v24, v14

    move-object/from16 v25, v12

    move-wide/from16 v21, v7

    move-object/from16 v18, v17

    move-wide/from16 v19, v9

    move-object/from16 v17, v36

    invoke-direct/range {v16 .. v35}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    return-object v16
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/mL;JJJ)Lcom/facebook/ads/redexgen/X/6x;
    .locals 20

    .line 20769
    move-wide/from16 v7, p4

    move-object/from16 v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 20770
    move-object/from16 v4, p1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/2a;->A00()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget v9, v1, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    iget-boolean v10, v1, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v14, v1, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-wide/from16 v5, p2

    move-wide/from16 v18, v5

    move-wide/from16 v16, p6

    invoke-direct/range {v2 .. v19}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJ)V

    .line 20771
    return-object v2

    .line 20772
    :cond_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;)Lcom/facebook/ads/redexgen/X/6x;
    .locals 36

    move-object/from16 v12, p0

    .line 20773
    new-instance v11, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    move-object/from16 v18, v0

    iget-wide v7, v12, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    iget-wide v5, v12, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    move/from16 v17, v0

    iget-boolean v15, v12, Lcom/facebook/ads/redexgen/X/6x;->A0A:Z

    iget-object v14, v12, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v9, v12, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-object/from16 v16, v11

    iget-wide v3, v12, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iget-wide v1, v12, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    iget-object v13, v12, Lcom/facebook/ads/redexgen/X/6x;->A08:Lcom/facebook/ads/redexgen/X/hX;

    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/6x;->A09:Z

    move-object/from16 v26, p2

    move-object/from16 v25, p1

    move-wide/from16 v30, v3

    move-wide/from16 v32, v1

    move-object/from16 v34, v13

    move/from16 v35, v0

    move/from16 v24, v15

    move-object/from16 v27, v14

    move-wide/from16 v28, v9

    move-wide/from16 v21, v5

    move/from16 v23, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v18

    move-wide/from16 v19, v7

    invoke-direct/range {v16 .. v35}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20774
    .local v1, "playbackInfo":Lcom/facebook/ads/redexgen/X/6x;
    invoke-static {v12, v11}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6x;)V

    .line 20775
    return-object v11
.end method

.method public final A08(Z)Lcom/facebook/ads/redexgen/X/6x;
    .locals 38

    move-object/from16 v11, p0

    .line 20776
    new-instance v10, Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-object/from16 v37, v0

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    move-object/from16 v36, v0

    iget-wide v6, v11, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    iget-wide v4, v11, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A00:I

    move/from16 v18, v0

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A06:Lcom/facebook/ads/redexgen/X/mA;

    move-object/from16 v17, v0

    iget-object v15, v11, Lcom/facebook/ads/redexgen/X/6x;->A07:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v14, v11, Lcom/facebook/ads/redexgen/X/6x;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v8, v11, Lcom/facebook/ads/redexgen/X/6x;->A0B:J

    move-object/from16 v16, v10

    iget-wide v2, v11, Lcom/facebook/ads/redexgen/X/6x;->A0D:J

    iget-wide v0, v11, Lcom/facebook/ads/redexgen/X/6x;->A0C:J

    iget-object v13, v11, Lcom/facebook/ads/redexgen/X/6x;->A08:Lcom/facebook/ads/redexgen/X/hX;

    iget-boolean v12, v11, Lcom/facebook/ads/redexgen/X/6x;->A09:Z

    move/from16 v24, p1

    move-wide/from16 v30, v2

    move-wide/from16 v32, v0

    move-object/from16 v34, v13

    move/from16 v35, v12

    move-object/from16 v25, v17

    move-object/from16 v26, v15

    move-object/from16 v27, v14

    move-wide/from16 v28, v8

    move-wide/from16 v19, v6

    move-wide/from16 v21, v4

    move/from16 v23, v18

    move-object/from16 v17, v37

    move-object/from16 v18, v36

    invoke-direct/range {v16 .. v35}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJIZLcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/EL;Lcom/facebook/ads/redexgen/X/mL;JJJLcom/facebook/ads/redexgen/X/hX;Z)V

    .line 20777
    .local v1, "playbackInfo":Lcom/facebook/ads/redexgen/X/6x;
    invoke-static {v11, v10}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6x;)V

    .line 20778
    return-object v10
.end method
