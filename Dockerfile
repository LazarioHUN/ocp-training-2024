FROM python:3.12
WORKDIR /work-picker
RUN pip install flask
COPY ./word-picker/word_picker.py /word-picker/word_picker.py
ENV FLASK_APP=/word-picker/word_picker.py
CMD ["flask", "run", "-h", "0.0.0.0"]
