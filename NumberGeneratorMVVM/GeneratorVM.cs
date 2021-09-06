using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using System.Threading;
using System.Windows.Controls;

namespace NumberGeneratorMVVM
{
    public class GeneratorVM: INotifyPropertyChanged
    {
        private RelayCommand _startGenerateCommand;
        private RelayCommand _stopGenerateCommand;
        private int _period;
        private Timer _timer;

        readonly GeneratorModel _generatorModel = new GeneratorModel();

        public event PropertyChangedEventHandler PropertyChanged;

        public ReadOnlyObservableCollection<ListItem> UsingValues => _generatorModel.UsingValues;

        public Timer Timer
        {
            get { return _timer;}
            set
            {
                _timer = value;
            }
        }

        public bool StartNotClicked = true;

        public int Period
        {
            get { return _period; }
            set
            {
                _period = value;
            }

        }


        // команда генерации числа с периодом
        public RelayCommand StartGenerateCommand
        {
            get
            {
                return _startGenerateCommand ??
                       (_startGenerateCommand = new RelayCommand(obj =>
                       {
                           if (Timer != null)
                               Timer.Change(Timeout.Infinite, Timeout.Infinite);

                           //if (StartNotClicked)
                           //{
                           //_generatorModel.AddValue(obj);

                           // устанавливаем метод обратного вызова генерации числа
                           TimerCallback tm = new TimerCallback(_generatorModel.AddValue);
                               // создаем таймер
                           Timer = new Timer(tm, null, 0, Period);

                           //}
                           //StartNotClicked = false;
                       }));
            }
        }

        // команда остановки команды генерации чисел
        public RelayCommand StopGenerateCommand
        {
            get
            {
                return _stopGenerateCommand ??
                       (_stopGenerateCommand = new RelayCommand(obj =>
                       {
                           // останавливаем таймер
                           if(Timer != null)
                               Timer.Change(Timeout.Infinite, Timeout.Infinite);

                           //StartNotClicked = true;
                       }));
            }
        }
        public GeneratorVM()
        {
            
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
