.class public final Lcom/google/android/ads/nativetemplates/TemplateView;
.super Landroid/widget/FrameLayout;
.source "Proguard"


# static fields
.field private static final MEDIUM_TEMPLATE:Ljava/lang/String; = "medium_template"

.field private static final SMALL_TEMPLATE:Ljava/lang/String; = "small_template"


# instance fields
.field private background:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private callToActionView:Landroid/widget/Button;

.field private iconView:Landroid/widget/ImageView;

.field private mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field private nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field private primaryView:Landroid/widget/TextView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private secondaryView:Landroid/widget/TextView;

.field private styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

.field private templateType:I

.field private tertiaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/ads/nativetemplates/TemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/ads/nativetemplates/TemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/ads/nativetemplates/TemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method private applyStyles()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getMainBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextTypeface()Landroid/graphics/Typeface;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextTypeface()Landroid/graphics/Typeface;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextTypeface()Landroid/graphics/Typeface;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTextTypeface()Landroid/graphics/Typeface;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextTypefaceColor()Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextTypefaceColor()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    :cond_7
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextTypefaceColor()Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextTypefaceColor()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    :cond_8
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextTypefaceColor()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 154
    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextTypefaceColor()Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    :cond_9
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTypefaceColor()Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 179
    .line 180
    if-eqz v0, :cond_a

    .line 181
    .line 182
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTypefaceColor()Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    .line 194
    .line 195
    :cond_a
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTextSize()F

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/4 v1, 0x0

    .line 202
    cmpl-float v2, v0, v1

    .line 203
    .line 204
    if-lez v2, :cond_b

    .line 205
    .line 206
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 207
    .line 208
    if-eqz v2, :cond_b

    .line 209
    .line 210
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    .line 212
    .line 213
    :cond_b
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextSize()F

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    cmpl-float v2, v0, v1

    .line 220
    .line 221
    if-lez v2, :cond_c

    .line 222
    .line 223
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 224
    .line 225
    if-eqz v2, :cond_c

    .line 226
    .line 227
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 228
    .line 229
    .line 230
    :cond_c
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextSize()F

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    cmpl-float v2, v0, v1

    .line 237
    .line 238
    if-lez v2, :cond_d

    .line 239
    .line 240
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 241
    .line 242
    if-eqz v2, :cond_d

    .line 243
    .line 244
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    .line 246
    .line 247
    :cond_d
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextSize()F

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    cmpl-float v1, v0, v1

    .line 254
    .line 255
    if-lez v1, :cond_e

    .line 256
    .line 257
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v1, :cond_e

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    .line 263
    .line 264
    :cond_e
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-eqz v0, :cond_f

    .line 271
    .line 272
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 273
    .line 274
    if-eqz v1, :cond_f

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 277
    .line 278
    .line 279
    :cond_f
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 288
    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    .line 293
    .line 294
    :cond_10
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    if-eqz v0, :cond_11

    .line 301
    .line 302
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 303
    .line 304
    if-eqz v1, :cond_11

    .line 305
    .line 306
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    .line 308
    .line 309
    :cond_11
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    if-eqz v0, :cond_12

    .line 316
    .line 317
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 318
    .line 319
    if-eqz v1, :cond_12

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    .line 323
    .line 324
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/flutter/plugins/googlemobileads/R$styleable;->TemplateView:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :try_start_0
    sget v0, Lio/flutter/plugins/googlemobileads/R$styleable;->TemplateView_gnt_template_type:I

    .line 13
    .line 14
    sget v1, Lio/flutter/plugins/googlemobileads/R$layout;->gnt_medium_template_view:I

    .line 15
    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->templateType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    .line 24
    .line 25
    const-string p2, "layout_inflater"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/view/LayoutInflater;

    .line 32
    .line 33
    iget p2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->templateType:I

    .line 34
    .line 35
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method


# virtual methods
.method public destroyNativeAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemplateTypeName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->templateType:I

    .line 2
    .line 3
    sget v1, Lio/flutter/plugins/googlemobileads/R$layout;->gnt_medium_template_view:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "medium_template"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget v1, Lio/flutter/plugins/googlemobileads/R$layout;->gnt_small_template_view:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const-string v0, "small_template"

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    const-string v0, ""

    .line 18
    .line 19
    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->native_ad_view:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 13
    .line 14
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->primary:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 23
    .line 24
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->secondary:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 33
    .line 34
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->body:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 43
    .line 44
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->rating_bar:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/RatingBar;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->cta:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/Button;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 67
    .line 68
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->icon:I

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    .line 77
    .line 78
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->media_view:I

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 87
    .line 88
    sget v0, Lio/flutter/plugins/googlemobileads/R$id;->background:I

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 97
    .line 98
    return-void
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 13

    .line 1
    iput-object p1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 32
    .line 33
    iget-object v8, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 34
    .line 35
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 39
    .line 40
    iget-object v8, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 46
    .line 47
    iget-object v8, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 50
    .line 51
    .line 52
    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/ads/nativetemplates/TemplateView;->adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_0

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 65
    .line 66
    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v1, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStoreView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 79
    .line 80
    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v0, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    move-object v0, v1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string v0, ""

    .line 88
    .line 89
    :goto_0
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 104
    .line 105
    .line 106
    move-result-wide v9

    .line 107
    const-wide/16 v11, 0x0

    .line 108
    .line 109
    cmpl-double v2, v9, v11

    .line 110
    .line 111
    if-lez v2, :cond_2

    .line 112
    .line 113
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    .line 119
    .line 120
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStarRatingView(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_1
    if-eqz v6, :cond_3

    .line 156
    .line 157
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    .line 158
    .line 159
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    :goto_2
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 178
    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public setStyles(Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/ads/nativetemplates/TemplateView;->applyStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
