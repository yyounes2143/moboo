.class public final Landroidx/media3/container/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final maxNumRefFrames:I

.field public final maxNumReorderFrames:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthHeightRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIIFIIZZIIIZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumRefFrames:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 19
    .line 20
    iput p9, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    .line 23
    .line 24
    iput-boolean p11, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 25
    .line 26
    iput-boolean p12, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 27
    .line 28
    iput p13, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    .line 29
    .line 30
    iput p14, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 31
    .line 32
    iput p15, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 33
    .line 34
    move/from16 p1, p16

    .line 35
    .line 36
    iput-boolean p1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    .line 37
    .line 38
    move/from16 p1, p17

    .line 39
    .line 40
    iput p1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    .line 41
    .line 42
    move/from16 p1, p18

    .line 43
    .line 44
    iput p1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    .line 45
    .line 46
    move/from16 p1, p19

    .line 47
    .line 48
    iput p1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    .line 49
    .line 50
    move/from16 p1, p20

    .line 51
    .line 52
    iput p1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    .line 53
    .line 54
    return-void
.end method
