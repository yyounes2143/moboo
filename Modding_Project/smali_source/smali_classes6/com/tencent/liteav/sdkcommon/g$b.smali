.class final Lcom/tencent/liteav/sdkcommon/g$b;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/sdkcommon/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/sdkcommon/g;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/liteav/sdkcommon/g;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/sdkcommon/g$b;-><init>(Lcom/tencent/liteav/sdkcommon/g;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    float-to-int v0, v0

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    float-to-int p2, p2

    .line 23
    iget v3, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    .line 24
    .line 25
    sub-int v3, v0, v3

    .line 26
    .line 27
    iget v4, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    .line 28
    .line 29
    sub-int v4, p2, v4

    .line 30
    .line 31
    iget-object v5, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 36
    .line 37
    add-int/2addr v6, v3

    .line 38
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    .line 40
    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 41
    .line 42
    add-int/2addr v3, v4

    .line 43
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 44
    .line 45
    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    .line 46
    .line 47
    iput p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    .line 48
    .line 49
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 54
    .line 55
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 60
    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 66
    .line 67
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 68
    .line 69
    iget-object v0, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    .line 70
    .line 71
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 72
    .line 73
    iget-object v4, p2, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    .line 74
    .line 75
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .line 77
    add-int v6, v3, v5

    .line 78
    .line 79
    if-le v6, v5, :cond_1

    .line 80
    .line 81
    sub-int/2addr v5, v3

    .line 82
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    .line 87
    :goto_0
    iget v3, p2, Lcom/tencent/liteav/sdkcommon/g;->n:I

    .line 88
    .line 89
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 90
    .line 91
    iget-boolean v5, p2, Lcom/tencent/liteav/sdkcommon/g;->m:Z

    .line 92
    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    div-int/2addr v3, v2

    .line 96
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 97
    .line 98
    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 99
    .line 100
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 101
    .line 102
    add-int/2addr v3, v2

    .line 103
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .line 105
    if-le v3, v4, :cond_3

    .line 106
    .line 107
    sub-int/2addr v4, v2

    .line 108
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    .line 110
    :cond_3
    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/tencent/liteav/sdkcommon/g;->b()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    .line 127
    .line 128
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 132
    .line 133
    iget-object v0, p2, Lcom/tencent/liteav/sdkcommon/g;->f:Landroid/view/WindowManager;

    .line 134
    .line 135
    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    .line 136
    .line 137
    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    float-to-int v0, v0

    .line 146
    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    float-to-int p2, p2

    .line 153
    iput p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    .line 154
    .line 155
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 156
    .line 157
    .line 158
    return v1
.end method
