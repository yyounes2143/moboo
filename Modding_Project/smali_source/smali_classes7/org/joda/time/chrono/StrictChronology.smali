.class public final Lorg/joda/time/chrono/StrictChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "Proguard"


# static fields
.field private static final serialVersionUID:J = 0x5c0d2c62948a3798L


# instance fields
.field public transient Kkkkkkkkkkkkk:Lorg/joda/time/Chronology;


# direct methods
.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/joda/time/field/StrictDateTimeField;->getInstance(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/joda/time/chrono/StrictChronology;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/joda/time/chrono/StrictChronology;-><init>(Lorg/joda/time/Chronology;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Must supply a chronology"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method


# virtual methods
.method public assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 8
    .line 9
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Www:Lorg/joda/time/DateTimeField;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Www:Lorg/joda/time/DateTimeField;

    .line 16
    .line 17
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 18
    .line 19
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 24
    .line 25
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 32
    .line 33
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 34
    .line 35
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 40
    .line 41
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 42
    .line 43
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 48
    .line 49
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 50
    .line 51
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 56
    .line 57
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 58
    .line 59
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 64
    .line 65
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwww:Lorg/joda/time/DateTimeField;

    .line 66
    .line 67
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwww:Lorg/joda/time/DateTimeField;

    .line 72
    .line 73
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwww:Lorg/joda/time/DateTimeField;

    .line 74
    .line 75
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwww:Lorg/joda/time/DateTimeField;

    .line 80
    .line 81
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 82
    .line 83
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 88
    .line 89
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwww:Lorg/joda/time/DateTimeField;

    .line 90
    .line 91
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwww:Lorg/joda/time/DateTimeField;

    .line 96
    .line 97
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 98
    .line 99
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 104
    .line 105
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 106
    .line 107
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 112
    .line 113
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 114
    .line 115
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 120
    .line 121
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 122
    .line 123
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 128
    .line 129
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 130
    .line 131
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 136
    .line 137
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 138
    .line 139
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 144
    .line 145
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 146
    .line 147
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 152
    .line 153
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 154
    .line 155
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 160
    .line 161
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 162
    .line 163
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 168
    .line 169
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 170
    .line 171
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 176
    .line 177
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 178
    .line 179
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 184
    .line 185
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/joda/time/chrono/StrictChronology;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lorg/joda/time/chrono/StrictChronology;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x7

    .line 10
    .line 11
    const v1, 0x1507c8d0

    .line 12
    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "StrictChronology["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x5d

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->Kkkkkkkkkkkkk:Lorg/joda/time/Chronology;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iput-object p0, p0, Lorg/joda/time/chrono/StrictChronology;->Kkkkkkkkkkkkk:Lorg/joda/time/Chronology;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->Kkkkkkkkkkkkk:Lorg/joda/time/Chronology;

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->Kkkkkkkkkkkkk:Lorg/joda/time/Chronology;

    .line 31
    .line 32
    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->withUTC()Lorg/joda/time/Chronology;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lorg/joda/time/chrono/StrictChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
