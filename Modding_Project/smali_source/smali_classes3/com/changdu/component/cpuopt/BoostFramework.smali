.class public Lcom/changdu/component/cpuopt/BoostFramework;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field private static final TAG:Ljava/lang/String; = "BoostFramework"

.field private static mAcquireFunc:Ljava/lang/reflect/Method; = null

.field private static mAcquireTouchFunc:Ljava/lang/reflect/Method; = null

.field private static mConstructor:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mIOPStart:Ljava/lang/reflect/Method; = null

.field private static mIOPStop:Ljava/lang/reflect/Method; = null

.field private static mIsLoaded:Z = false

.field private static mReleaseFunc:Ljava/lang/reflect/Method;


# instance fields
.field private mPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const-class v3, [I

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 11
    .line 12
    sget-boolean v5, Lcom/changdu/component/cpuopt/BoostFramework;->mIsLoaded:Z

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    :try_start_0
    new-instance v5, Ldalvik/system/PathClassLoader;

    .line 17
    .line 18
    const-string v6, "/system/framework/QPerformance.jar"

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 25
    .line 26
    .line 27
    const-string v6, "com.qualcomm.qti.Performance"

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    sput-object v6, Lcom/changdu/component/cpuopt/BoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 38
    .line 39
    const-string v6, "perfLockAcquire"

    .line 40
    .line 41
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    new-array v8, v1, [Ljava/lang/Class;

    .line 44
    .line 45
    aput-object v7, v8, v0

    .line 46
    .line 47
    aput-object v3, v8, v2

    .line 48
    .line 49
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    sput-object v6, Lcom/changdu/component/cpuopt/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    sget-object v6, Lcom/changdu/component/cpuopt/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 56
    .line 57
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    const-string v6, "perfLockRelease"

    .line 61
    .line 62
    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    sput-object v6, Lcom/changdu/component/cpuopt/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    sget-object v6, Lcom/changdu/component/cpuopt/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    const-string v6, "perfLockAcquireTouch"

    .line 74
    .line 75
    const/4 v8, 0x4

    .line 76
    new-array v8, v8, [Ljava/lang/Class;

    .line 77
    .line 78
    const-class v9, Landroid/view/MotionEvent;

    .line 79
    .line 80
    aput-object v9, v8, v0

    .line 81
    .line 82
    const-class v9, Landroid/util/DisplayMetrics;

    .line 83
    .line 84
    aput-object v9, v8, v2

    .line 85
    .line 86
    aput-object v7, v8, v1

    .line 87
    .line 88
    const/4 v9, 0x3

    .line 89
    aput-object v3, v8, v9

    .line 90
    .line 91
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sput-object v3, Lcom/changdu/component/cpuopt/BoostFramework;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 96
    .line 97
    sget-object v3, Lcom/changdu/component/cpuopt/BoostFramework;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 98
    .line 99
    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    const-string v3, "perfIOPrefetchStart"

    .line 103
    .line 104
    new-array v1, v1, [Ljava/lang/Class;

    .line 105
    .line 106
    aput-object v7, v1, v0

    .line 107
    .line 108
    const-class v0, Ljava/lang/String;

    .line 109
    .line 110
    aput-object v0, v1, v2

    .line 111
    .line 112
    invoke-virtual {v5, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    .line 117
    .line 118
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    .line 119
    .line 120
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    const-string v0, "perfIOPrefetchStop"

    .line 124
    .line 125
    invoke-virtual {v5, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sput-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    .line 130
    .line 131
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    .line 132
    .line 133
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    sput-boolean v2, Lcom/changdu/component/cpuopt/BoostFramework;->mIsLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 144
    .line 145
    if-eqz v0, :cond_1

    .line 146
    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public perfIOPrefetchStart(ILjava/lang/String;)I
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p2, v2, p1

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    return p1
.end method

.method public perfIOPrefetchStop()I
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    return v0
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p2, v2, p1

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    return p1
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const/4 v2, 0x4

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p2, v2, p1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    aput-object p3, v2, p1

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    aput-object p4, v2, p1

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    return p1
.end method

.method public perfLockRelease()I
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/cpuopt/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/cpuopt/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    return v0
.end method
