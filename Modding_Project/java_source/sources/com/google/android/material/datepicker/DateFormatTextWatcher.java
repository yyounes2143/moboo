package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import kotlin.text.Typography;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class DateFormatTextWatcher extends TextWatcherAdapter {
    private static final int VALIDATION_DELAY = 1000;
    private final CalendarConstraints constraints;
    private final DateFormat dateFormat;
    private final String outOfRange;
    private final Runnable setErrorCallback;
    private Runnable setRangeErrorCallback;
    @NonNull
    private final TextInputLayout textInputLayout;

    public DateFormatTextWatcher(final String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.dateFormat = dateFormat;
        this.textInputLayout = textInputLayout;
        this.constraints = calendarConstraints;
        this.outOfRange = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.setErrorCallback = new Runnable() { // from class: com.google.android.material.datepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateFormatTextWatcher.this, str);
            }
        };
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateFormatTextWatcher dateFormatTextWatcher, String str) {
        TextInputLayout textInputLayout = dateFormatTextWatcher.textInputLayout;
        DateFormat dateFormat = dateFormatTextWatcher.dateFormat;
        Context context = textInputLayout.getContext();
        String string = context.getString(R.string.mtrl_picker_invalid_format);
        String format = String.format(context.getString(R.string.mtrl_picker_invalid_format_use), dateFormatTextWatcher.sanitizeDateString(str));
        String format2 = String.format(context.getString(R.string.mtrl_picker_invalid_format_example), dateFormatTextWatcher.sanitizeDateString(dateFormat.format(new Date(UtcDates.getTodayCalendar().getTimeInMillis()))));
        textInputLayout.setError(string + "\n" + format + "\n" + format2);
        dateFormatTextWatcher.onInvalidDate();
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateFormatTextWatcher dateFormatTextWatcher, long j) {
        dateFormatTextWatcher.getClass();
        dateFormatTextWatcher.textInputLayout.setError(String.format(dateFormatTextWatcher.outOfRange, dateFormatTextWatcher.sanitizeDateString(DateStrings.getDateString(j))));
        dateFormatTextWatcher.onInvalidDate();
    }

    private Runnable createRangeErrorCallback(final long j) {
        return new Runnable() { // from class: com.google.android.material.datepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateFormatTextWatcher.this, j);
            }
        };
    }

    private String sanitizeDateString(String str) {
        return str.replace(' ', Typography.nbsp);
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) {
        this.textInputLayout.removeCallbacks(this.setErrorCallback);
        this.textInputLayout.removeCallbacks(this.setRangeErrorCallback);
        this.textInputLayout.setError(null);
        onValidDate(null);
        if (!TextUtils.isEmpty(charSequence)) {
            try {
                Date parse = this.dateFormat.parse(charSequence.toString());
                this.textInputLayout.setError(null);
                long time = parse.getTime();
                if (this.constraints.getDateValidator().isValid(time) && this.constraints.isWithinBounds(time)) {
                    onValidDate(Long.valueOf(parse.getTime()));
                    return;
                }
                Runnable createRangeErrorCallback = createRangeErrorCallback(time);
                this.setRangeErrorCallback = createRangeErrorCallback;
                runValidation(this.textInputLayout, createRangeErrorCallback);
            } catch (ParseException unused) {
                runValidation(this.textInputLayout, this.setErrorCallback);
            }
        }
    }

    public abstract void onValidDate(@Nullable Long l);

    public void runValidation(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    public void onInvalidDate() {
    }
}
