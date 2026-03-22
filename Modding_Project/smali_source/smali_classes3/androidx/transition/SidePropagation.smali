.class public Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "Proguard"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40400000    # 3.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 7
    .line 8
    const/16 v0, 0x50

    .line 9
    .line 10
    iput v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    .line 11
    .line 12
    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    .line 2
    .line 3
    const v1, 0x800003

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x5

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    :cond_0
    move v0, v4

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const v1, 0x800005

    .line 22
    .line 23
    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    :goto_1
    if-eq v0, v3, :cond_7

    .line 34
    .line 35
    if-eq v0, v4, :cond_6

    .line 36
    .line 37
    const/16 p1, 0x30

    .line 38
    .line 39
    if-eq v0, p1, :cond_5

    .line 40
    .line 41
    const/16 p1, 0x50

    .line 42
    .line 43
    if-eq v0, p1, :cond_4

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    :cond_4
    sub-int/2addr p3, p7

    .line 48
    sub-int/2addr p4, p2

    .line 49
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/2addr p3, p1

    .line 54
    return p3

    .line 55
    :cond_5
    sub-int/2addr p9, p3

    .line 56
    sub-int/2addr p4, p2

    .line 57
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/2addr p9, p1

    .line 62
    return p9

    .line 63
    :cond_6
    sub-int/2addr p2, p6

    .line 64
    sub-int/2addr p5, p3

    .line 65
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    add-int/2addr p2, p1

    .line 70
    return p2

    .line 71
    :cond_7
    sub-int/2addr p8, p2

    .line 72
    sub-int/2addr p5, p3

    .line 73
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    add-int/2addr p8, p1

    .line 78
    return p8
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const v1, 0x800003

    .line 10
    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const v1, 0x800005

    .line 15
    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 14

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    const-wide/16 v10, 0x0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    return-wide v10

    .line 10
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/transition/VisibilityPropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object/from16 v1, p4

    .line 25
    .line 26
    move v12, v3

    .line 27
    :goto_0
    move-object v4, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    const/4 v4, -0x1

    .line 30
    move v12, v4

    .line 31
    goto :goto_0

    .line 32
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/transition/VisibilityPropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v1}, Landroidx/transition/VisibilityPropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v5, 0x2

    .line 41
    new-array v6, v5, [I

    .line 42
    .line 43
    move-object v7, p1

    .line 44
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    aget v8, v6, v8

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    add-int/2addr v8, v9

    .line 59
    aget v3, v6, v3

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    add-int/2addr v3, v6

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    add-int/2addr v6, v8

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    add-int/2addr v9, v3

    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    move v0, v3

    .line 91
    move v3, v1

    .line 92
    move-object v1, v7

    .line 93
    move v7, v0

    .line 94
    move v0, v5

    .line 95
    move v5, v4

    .line 96
    move v4, v0

    .line 97
    :goto_3
    move v0, v8

    .line 98
    move v8, v6

    .line 99
    move v6, v0

    .line 100
    move-object v0, p0

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    add-int v4, v8, v6

    .line 103
    .line 104
    div-int/2addr v4, v5

    .line 105
    add-int v13, v3, v9

    .line 106
    .line 107
    div-int/lit8 v5, v13, 0x2

    .line 108
    .line 109
    move v0, v3

    .line 110
    move v3, v1

    .line 111
    move-object v1, v7

    .line 112
    move v7, v0

    .line 113
    goto :goto_3

    .line 114
    :goto_4
    invoke-direct/range {v0 .. v9}, Landroidx/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    int-to-float v1, v2

    .line 119
    invoke-direct/range {p0 .. p1}, Landroidx/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    int-to-float v2, v2

    .line 124
    div-float/2addr v1, v2

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getDuration()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    cmp-long v4, v2, v10

    .line 130
    .line 131
    if-gez v4, :cond_4

    .line 132
    .line 133
    const-wide/16 v2, 0x12c

    .line 134
    .line 135
    :cond_4
    int-to-long v4, v12

    .line 136
    mul-long/2addr v2, v4

    .line 137
    long-to-float v2, v2

    .line 138
    iget v3, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 139
    .line 140
    div-float/2addr v2, v3

    .line 141
    mul-float/2addr v2, v1

    .line 142
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    int-to-long v1, v1

    .line 147
    return-wide v1
.end method

.method public setPropagationSpeed(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "propagationSpeed may not be 0"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public setSide(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/transition/SidePropagation;->mSide:I

    .line 2
    .line 3
    return-void
.end method
